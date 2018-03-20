#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <limits.h>
#include <float.h>

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */
#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR           XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR   XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR   XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR   XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#define MEM_BASE_ADDR           0x00100000
#else
#define MEM_BASE_ADDR           (DDR_BASE_ADDR + 0x1000000)
#endif

#define ACCEL_0_BASE            XPAR_MACACCELERATORTOP_0_BASEADDR
#define ACCEL_1_BASE            XPAR_MACACCELERATORTOP_1_BASEADDR
#define ACCEL_2_BASE            XPAR_MACACCELERATORTOP_2_BASEADDR
#define ACCEL_3_BASE            XPAR_MACACCELERATORTOP_3_BASEADDR

#define ACCEL_0_DMA                     XPAR_AXIDMA_0_DEVICE_ID
#define ACCEL_1_DMA                     XPAR_AXIDMA_1_DEVICE_ID
#define ACCEL_2_DMA                     XPAR_AXIDMA_2_DEVICE_ID
#define ACCEL_3_DMA                     XPAR_AXIDMA_3_DEVICE_ID

#define CORES                           4
#define INPUT_DIM                       1024
#define HIDDEN_UNITS            16
#define NUMBER_OF_TRANSFERS     50

// Neural network data address map
#define L1_W_BASE       0x00500000
#define L2_W_BASE       0x00600000
#define L1_B_BASE       0x00700000
#define L2_B_BASE       0x00800000
#define X_TEST_BASE     0x00900000
#define Y_TEST_BASE     0x00A00000
#define RESULT_BASE             0x00B00000
#define L1_OUTPUT_BASE  0x00C00000

#define DATASET_SIZE    10000
#define L1_INPUT_DIM    784
#define L2_INPUT_DIM    512
#define L2_OUTPUT_DIM   10

// Task types
#define TASK_LOAD_WEIGHTS       0
#define TASK_LOAD_INPUTS        1

/**************************** Type Definitions *******************************/

/**
 * Represents a task to be executed by the accelerator. A task can only represent a
 * SINGLE DMA operation. Anything more than that would be inefficient.
 */
typedef struct TASK {
    int type;
    int *src;
    int *dest;
    int inLength;
    int outLength;
    int unitIndex;
} task;

/**
 * Node in a queue.
 */
typedef struct NODE {
    struct TASK* data;
    struct NODE* next;
} node;

/**
 * A queue to hold our tasks.
 */
typedef struct QUEUE {
    struct NODE *head;
    struct NODE *tail;
    int length;
} queue;

/**
 * Related logic to abstract an accelerator.
 */
typedef struct ACCELERATOR {
    // Xilinx DMA controller
    XAxiDma *dma;

    // Control register base address
    UINTPTR ctrlBase;

    // Keeps track of all tasks in the queue
    queue *taskQueue;

    // Keeps track of the active buffer for DMA to write to / read from.
    int activeBuffer;

    // Buffers
    int* txBuffer1;
    int* rxBuffer1;
    int* txBuffer2;
    int* rxBuffer2;
} accelerator;

/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

/**
 * Accelerator functions.
 */
accelerator* initAccelerator(XAxiDma *dma, UINTPTR dmaAddr, UINTPTR ctrlAddr);
void runNextTask(accelerator *accel);
int isBusy(accelerator *accel);

/**
 * Task queue functions
 */
queue *initQ();
void enqueue(queue *q, task *t);
task* dequeue(queue *q);
task* peek(queue *q);
int isEmpty(queue *q);

/**
 * Accelerator control functions
 */
void clear(accelerator *accel);
void compute(accelerator *accel);
void load_weights(accelerator *accel);
void write_load_vector(accelerator *accel, int index);
void clear_load_vector(accelerator *accel);

/**
 * DMA functions
 */
int initiateDma(XAxiDma *dma, int *src, int *dest, int inputLength, int outputLength);
int initiateMM2SDma(XAxiDma *dma, int *src, int length);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */

static XAxiDma dma0;
static XAxiDma dma1;
static XAxiDma dma2;
static XAxiDma dma3;


/***************** Macros (Inline Functions) Definitions *********************/

// ENTRY : Main function
int main(void)
{
    accelerator *cores[CORES];
    int current = 0;

    xil_printf("Starting Neural Network Program\n");

    xil_printf("Initializing accelerators...");
    cores[0] = initAccelerator(&dma0, ACCEL_0_DMA, ACCEL_0_BASE);
    cores[1] = initAccelerator(&dma1, ACCEL_1_DMA, ACCEL_1_BASE);
    cores[2] = initAccelerator(&dma2, ACCEL_2_DMA, ACCEL_2_BASE);
    cores[3] = initAccelerator(&dma3, ACCEL_3_DMA, ACCEL_3_BASE);
    xil_printf("DONE\n");

    // Enqueue tasks into a global queue that will send them out to the cores.
    xil_printf("Enqueue tasks...");
    accelerator *currCore;
    for (int i = 0; i < 100; i++) {
        for (int j = 0; j < L2_INPUT_DIM; j += HIDDEN_UNITS) {
            currCore = cores[current];

            /**
             * Tasks to load weights.
             */
            for (int k = j; k < j+HIDDEN_UNITS; k++) {
                task *weightTask = malloc(sizeof(task));
                weightTask->type = TASK_LOAD_WEIGHTS;
                weightTask->inLength = L1_INPUT_DIM;
                weightTask->outLength = NULL;
                weightTask->src = L1_W_BASE + k * sizeof(int);
                weightTask->dest = NULL;
                weightTask->unitIndex = k - j;

                enqueue(currCore->taskQueue, weightTask);
            }

            /**
             * Task to load inputs.
             */
            task *inputTask = malloc(sizeof(task));
            inputTask->type = TASK_LOAD_INPUTS;
            inputTask->inLength = L1_INPUT_DIM;
            inputTask->outLength = L2_INPUT_DIM;
            inputTask->src = X_TEST_BASE + i * sizeof(int);
            inputTask->dest = L1_OUTPUT_BASE + j * sizeof(int);

            enqueue(currCore->taskQueue, inputTask);

            current = (current + 1) % CORES;
        }
    }
    xil_printf("DONE\n");

    /**
     * Round Robin scheduling.
     */

    // Set a heartbeat to update status on each task.
    int heartbeat;

    xil_printf("Run round robin scheduling...\n");
    current = 0;

    // TODO: Run the first task to kickstart

    while (!isEmpty(cores[0]->taskQueue) ||
            !isEmpty(cores[1]->taskQueue) ||
            !isEmpty(cores[2]->taskQueue) ||
            !isEmpty(cores[3]->taskQueue)) {
        currCore = cores[current];
        if (!isBusy(currCore)) {
            runNextTask(currCore);
        }

        current = (current + 1) % CORES;
        heartbeat = (heartbeat + 1) % 100000;
    }
    xil_printf("DONE\n");

    for (int i = 0; i < CORES; i++) {
        xil_printf("Core %d: %d tasks.\n", i+1, cores[i]->taskQueue->length);
    }

    xil_printf("Neural Network Program COMPLETE\n");
    return XST_SUCCESS;
}

/**
 * Queue functions
 */
queue *initQ()
{
    queue *q = malloc(sizeof(queue));
    q->head = NULL;
    q->tail = NULL;
    q->length = 0;

    return q;
}

void enqueue(queue *q, task *t)
{
    node *new = malloc(sizeof(node));
    new->data = t;
    new->next = NULL;

    q->tail->next = new;
    q->length++;
}

task* dequeue(queue *q)
{
    task *result = q->head->data;
    node *prev = q->head;

    q->head = q->head->next;
    q->length--;

    free(prev);

    return result;
}

task* peek(queue *q)
{
    return q->head->data;
}

int isEmpty(queue *q)
{
    return q->length == 0 ? 1 : 0;
}

/**
 * Accelerator functions.
 */
accelerator* initAccelerator(XAxiDma *dma, UINTPTR dmaAddr, UINTPTR ctrlAddr)
{
    accelerator *accel = malloc(sizeof(accelerator));
    int status;

    // Initialize DMA controller
    XAxiDma_Config *dmaConfig;
    dmaConfig = XAxiDma_LookupConfig(dmaAddr);
    if (!dmaConfig) {
        xil_printf("DMA configuration failed for %h\n", dmaAddr);
        return NULL;
    }

    status = XAxiDma_CfgInitialize(dma, dmaConfig);
    if (status != XST_SUCCESS) {
        xil_printf("DMA configuration failed for %h\n", dmaAddr);
        return NULL;
    }

    if (XAxiDma_HasSg(dma)) {
        xil_printf("DMA should not be configured with scatter-gather for %h\n", dmaAddr);
        return NULL;
    }

    XAxiDma_IntrDisable(dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrDisable(dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    // Set accelerator attributes
    accel = malloc(sizeof(accelerator));
    accel->dma = dma;
    accel->ctrlBase = ctrlAddr;
    accel->taskQueue = initQ();

    // Allocate buffers for each accelerator
    accel->rxBuffer1 = malloc(sizeof(int) * INPUT_DIM);
    accel->txBuffer1 = malloc(sizeof(int) * INPUT_DIM);
    accel->rxBuffer2 = malloc(sizeof(int) * INPUT_DIM);
    accel->txBuffer2 = malloc(sizeof(int) * INPUT_DIM);

    accel->activeBuffer = 0;

    return accel;
}

void runNextTask(accelerator *accel)
{
    task *nxt = dequeue(accel->taskQueue);

    // TODO: RUN DMA

    free(nxt);
}

int isBusy(accelerator *accel)
{
    return XAxiDma_Busy(accel->dma, XAXIDMA_DMA_TO_DEVICE) || XAxiDma_Busy(accel->dma, XAXIDMA_DEVICE_TO_DMA);
}

/**
 * Accelerator control functions.
 */
void clear(accelerator *accel) {
    Xil_Out32(accel->ctrlBase, 1);
}

void compute(accelerator *accel) {
    Xil_Out32(accel->ctrlBase, 0);
}

void load_weights(accelerator *accel) {
    Xil_Out32(accel->ctrlBase, 2);
}

void write_load_vector(accelerator *accel, int Index) {
    Xil_Out32(accel->ctrlBase + 4, 1 << Index);
}

void clear_load_vector(accelerator *accel) {
    Xil_Out32(accel->ctrlBase + 4, 0);
}

/**
 * DMA controller functions
 */
int initiateDma(XAxiDma *dma, int *src, int *dest, int inputLength, int outputLength)
{
    int Status;

    // Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled
    Xil_DCacheFlushRange((UINTPTR) src, inputLength);

    // Initiate S2MM transaction when accelerator is ready to write
    Status = XAxiDma_SimpleTransfer(dma,(UINTPTR) dest,
            outputLength, XAXIDMA_DEVICE_TO_DMA);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Initiate MM2S transaction
    Status = XAxiDma_SimpleTransfer(dma,(UINTPTR) src,
            inputLength, XAXIDMA_DMA_TO_DEVICE);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Wait tx and rx done
    while (XAxiDma_Busy(dma, XAXIDMA_DMA_TO_DEVICE) &&
            XAxiDma_Busy(dma, XAXIDMA_DEVICE_TO_DMA)) {
        // NOP
    }

    // Flush previous result from cache
    Xil_DCacheFlushRange((UINTPTR) dest, outputLength);

    return Status;
}

int initiateMM2SDma(XAxiDma *dma, int *src, int length)
{
    int Status;

    // Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled
    Xil_DCacheFlushRange((UINTPTR) src, length);

    Status = XAxiDma_SimpleTransfer(dma,(UINTPTR) src, length, XAXIDMA_DMA_TO_DEVICE);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    while (XAxiDma_Busy(dma, XAXIDMA_DMA_TO_DEVICE)) {
        // NOP
    }

    return Status;
}

#ifdef XPAR_UARTNS550_0_BASEADDR
/*****************************************************************************/
/*
 *
 * Uart16550 setup routine, need to set baudrate to 9600 and data bits to 8
 *
 * @param       None
 *
 * @return      None
 *
 * @note                None.
 *
 ******************************************************************************/
static void Uart550_Setup(void)
{

    XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
            XPAR_XUARTNS550_CLOCK_HZ, 9600);

    XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
            XUN_LCR_8_DATA_BITS);
}
#endif

