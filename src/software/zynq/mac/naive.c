#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include <math.h>
#include <limits.h>
#include <float.h>

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"
#endif


#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#else
#include "xscugic.h"
#endif

#define DMA_DEV_ID              XPAR_AXIDMA_0_DEVICE_ID

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

#ifdef XPAR_INTC_0_DEVICE_ID
#define RX_INTR_ID              XPAR_INTC_0_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID              XPAR_INTC_0_AXIDMA_0_MM2S_INTROUT_VEC_ID
#else
#define RX_INTR_ID              XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID              XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID
#endif

#define TX_BUFFER_BASE          (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE          (MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH          (MEM_BASE_ADDR + 0x004FFFFF)

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC            XIntc
#define INTC_HANDLER    XIntc_InterruptHandler
#else
#define INTC            XScuGic
#define INTC_HANDLER    XScuGic_InterruptHandler
#endif

#define CTRL_MODE               XPAR_MACACCELERATORTOP_0_BASEADDR
#define CTRL_LOAD_VECTOR        XPAR_MACACCELERATORTOP_0_BASEADDR + 0x00000004

#define RESET_TIMEOUT_COUNTER   10000

#define INPUT_DIM               1024
#define HIDDEN_UNITS            16
#define NUMBER_OF_TRANSFERS     50


#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

static void TxIntrHandler(void *Callback);
static void RxIntrHandler(void *Callback);

static int SetupIntrSystem(INTC * IntcInstancePtr,
        XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
static void DisableIntrSystem(INTC * IntcInstancePtr,
        u16 TxIntrId, u16 RxIntrId);

static XAxiDma AxiDma;
static INTC Intc;

// Interrupt flags
volatile int TxDone;
volatile int RxDone;
volatile int Error;

void clear() {
    Xil_Out32(CTRL_MODE, 1);
}

void compute() {
    Xil_Out32(CTRL_MODE, 0);
}

void load_weights() {
    Xil_Out32(CTRL_MODE, 2);
}

void write_load_vector(int Index) {
    Xil_Out32(CTRL_LOAD_VECTOR, 1 << Index);
}

void clear_load_vector() {
    Xil_Out32(CTRL_LOAD_VECTOR, 0);
}

int neuralNetworkExample();
int initiateDma(int *src, int *dest, int inputLength, int outputLength);
int initiateMM2SDma(int *src, int length);


// Neural network data configuration
#define L1_W_BASE       0x00500000
#define L2_W_BASE       0x00600000
#define L1_B_BASE       0x00700000
#define L2_B_BASE       0x00800000
#define X_TEST_BASE     0x00900000
#define Y_TEST_BASE     0x00A00000
#define RESULT_BASE     0x00B00000

int main(void)
{
    int Status;
    XAxiDma_Config *Config;
    int Tries = NUMBER_OF_TRANSFERS;
    int Index;
    int *TxBufferPtr;
    int *RxBufferPtr;
    int Value;

    TxBufferPtr = (int*)TX_BUFFER_BASE;
    RxBufferPtr = (int*)RX_BUFFER_BASE;
    /* Initial setup for Uart16550 */
#ifdef XPAR_UARTNS550_0_BASEADDR

    Uart550_Setup();

#endif

    xil_printf("\r\n--- Entering main() --- \r\n");

    Config = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!Config) {
        xil_printf("No config found for %d\r\n", DMA_DEV_ID);

        return XST_FAILURE;
    }

    /* Initialize DMA engine */
    Status = XAxiDma_CfgInitialize(&AxiDma, Config);

    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }

    if(XAxiDma_HasSg(&AxiDma)){
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }

    /* Set up Interrupt system  */
    Status = SetupIntrSystem(&Intc, &AxiDma, TX_INTR_ID, RX_INTR_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed intr setup\r\n");
        return XST_FAILURE;
    }

    /* Disable all interrupts before setup */

    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DMA_TO_DEVICE);

    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DEVICE_TO_DMA);

    /* Enable all interrupts */
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DMA_TO_DEVICE);


    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DEVICE_TO_DMA);


    /* Initialize flags before start transfer test  */
    TxDone = 0;
    RxDone = 0;
    Error = 0;

    xil_printf("Running neural network example...\n");
    neuralNetworkExample();
    xil_printf("Neural network example complete\n");

    /* Disable TX and RX Ring interrupts and return success */
    DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);


Done:
    xil_printf("--- Exiting main() --- \r\n");

    return XST_SUCCESS;
}

int neuralNetworkExample()
{
    int Status;
    int *TxBufferPtr;
    int *RxBufferPtr;

    TxBufferPtr = (int*)TX_BUFFER_BASE;
    RxBufferPtr = (int*)RX_BUFFER_BASE;

    int *x_test = X_TEST_BASE;
    int *y_test = Y_TEST_BASE;
    int *l1_w = L1_W_BASE;
    int *l1_b = L1_B_BASE;
    int *l2_w = L2_W_BASE;
    int *l2_b = L2_B_BASE;
    int *result = RESULT_BASE;

    int matched = 0;


    for (int i = 0; i < 512; i++) {
        result[i] = 0;
    }

    for (int input = 0; input < 10000; input++) {

        // Layer 1 - 512 units
        for (int i = 0; i < 512; i+=16) {
            // We pass in an input dim of 1024, but since only 784 is used
            // as inputs, we will set the rest to zeros (not very optimal, but
            // it works for now)

            // Load weights
            load_weights();
            for (int j = i; j < i+HIDDEN_UNITS; j++) {
                write_load_vector(j-i);

                // Write weights to buffer
                for (int k = 0; k < INPUT_DIM; k++) {
                    if (k < 784) {
                        TxBufferPtr[k] = l1_w[j * 784 + k];
                    } else {
                        TxBufferPtr[k] = 0;
                    }
                }

                // Initiate DMA on buffer
                initiateMM2SDma(TxBufferPtr, INPUT_DIM * 4);
            }

            clear_load_vector();
            clear();
            compute();

            // Write input to buffer
            for (int j = 0; j < INPUT_DIM; j++) {
                if (j < 784) {
                    TxBufferPtr[j] = x_test[input * 784 + j];
                } else {
                    TxBufferPtr[j] = 0;
                }
            }

            // Initiate DMA on buffer
            initiateDma(TxBufferPtr, RxBufferPtr, INPUT_DIM * 4, HIDDEN_UNITS * 4);

            clear();

            // Read outputs, add bias and apply ReLU to it
            int output;
            for (int j = i; j < i+16; j++) {
                output = RxBufferPtr[j-i] + l1_b[j];
                if (output < 0) {
                    result[j] = 0;
                } else {
                    result[j] = output;
                }
            }
        }

        // Layer 2 - 10 units

        // Load weights
        load_weights();

        for (int j = 0; j < 10; j++) {
            write_load_vector(j);

            // Write weights to buffer
            for (int k = 0; k < INPUT_DIM; k++) {
                if (k < 512) {
                    TxBufferPtr[k] = l2_w[j * 512 + k];
                } else {
                    TxBufferPtr[k] = 0;
                }
            }

            // Initiate DMA on buffer
            initiateMM2SDma(TxBufferPtr, INPUT_DIM * 4);
        }

        clear_load_vector();
        clear();

        // Write input to buffer
        for (int j = 0; j < INPUT_DIM; j++) {
            if (j < 512) {
                TxBufferPtr[j] = result[j];
            } else {
                TxBufferPtr[j] = 0;
            }
        }

        compute();

        // Initiate DMA on buffer
        initiateDma(TxBufferPtr, RxBufferPtr, INPUT_DIM * 4, HIDDEN_UNITS * 4);

        clear();

        int max = INT_MIN;
        int maxIndex = 0;
        for (int j = 0; j < 10; j++) {
            result[j] = RxBufferPtr[j] + l2_b[j];
            if (result[j] > max) {
                max = result[j];
                maxIndex = j;
            }
            // xil_printf("%d ", result[j]);
        }
        // xil_printf("\n");

        if (y_test[input * 10 + maxIndex] == 1) {
            matched++;
            // xil_printf("Input #%d: %d - Match!\n", input, maxIndex);
        } else {
            // xil_printf("Input #%d: %d vs %d - MISS\n", input, maxIndex, expected);
        }

        if (input % 1000 == 0) {
            xil_printf("Correct: %d\n", matched);
            xil_printf("%d/%d done\n", input, 10000);
        }
    }

    printf("Accuracy: %d/%d\n", matched, 10000);

    return Status;
}

int initiateDma(int *src, int *dest, int inputLength, int outputLength)
{
    int Status;

    // Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled
    Xil_DCacheFlushRange((UINTPTR) src, inputLength);

    // Initiate S2MM transaction when accelerator is ready to write
    Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) dest,
            outputLength, XAXIDMA_DEVICE_TO_DMA);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Initiate MM2S transaction
    Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) src,
            inputLength, XAXIDMA_DMA_TO_DEVICE);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Wait tx and rx done
    while (!TxDone && !RxDone && !Error) {}

    // Reset interrupt flags
    TxDone = 0;
    RxDone = 0;
    Error = 0;

    // Flush previous result from cache
    Xil_DCacheFlushRange((UINTPTR) dest, outputLength);

    return Status;
}

int initiateMM2SDma(int *src, int length)
{
    int Status;

    // Flush the SrcBuffer before the DMA transfer, in case the Data Cache is enabled
    Xil_DCacheFlushRange((UINTPTR) src, length);

    // Initiate MM2S transaction
    Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) src,
            length, XAXIDMA_DMA_TO_DEVICE);

    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Wait tx done
    while (!TxDone && !Error) {}

    // Reset interrupt flags
    TxDone = 0;
    RxDone = 0;
    Error = 0;

    return Status;
}

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void)
{

    XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
            XPAR_XUARTNS550_CLOCK_HZ, 9600);

    XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
            XUN_LCR_8_DATA_BITS);
}
#endif


static void TxIntrHandler(void *Callback)
{

    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    /* Acknowledge pending interrupts */


    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /*
         * Reset should never fail for transmit channel
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if (XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If Completion interrupt is asserted, then set the TxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        TxDone = 1;
    }
}

static void RxIntrHandler(void *Callback)
{
    u32 IrqStatus;
    int TimeOut;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    /* Read pending interrupts */
    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    /* Acknowledge pending interrupts */
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /*
     * If no interrupt is asserted, we do not do anything
     */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /*
     * If error interrupt is asserted, raise error flag, reset the
     * hardware to recover from the error, and return with no further
     * processing.
     */
    if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

        Error = 1;

        /* Reset could fail and hang
         * NEED a way to handle this or do not call it??
         */
        XAxiDma_Reset(AxiDmaInst);

        TimeOut = RESET_TIMEOUT_COUNTER;

        while (TimeOut) {
            if(XAxiDma_ResetIsDone(AxiDmaInst)) {
                break;
            }

            TimeOut -= 1;
        }

        return;
    }

    /*
     * If completion interrupt is asserted, then set RxDone flag
     */
    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

        RxDone = 1;
    }
}

static int SetupIntrSystem(INTC * IntcInstancePtr,
        XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
    int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

    /* Initialize the interrupt controller and connect the ISRs */
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed init intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, TxIntrId,
            (XInterruptHandler) TxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed tx connect intc\r\n");
        return XST_FAILURE;
    }

    Status = XIntc_Connect(IntcInstancePtr, RxIntrId,
            (XInterruptHandler) RxIntrHandler, AxiDmaPtr);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed rx connect intc\r\n");
        return XST_FAILURE;
    }

    /* Start the interrupt controller */
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {

        xil_printf("Failed to start intc\r\n");
        return XST_FAILURE;
    }

    XIntc_Enable(IntcInstancePtr, TxIntrId);
    XIntc_Enable(IntcInstancePtr, RxIntrId);

#else

    XScuGic_Config *IntcConfig;


    /*
     * Initialize the interrupt controller driver so that it is ready to
     * use.
     */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
            IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }


    XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
    /*
     * Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device.
     */
    Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
            (Xil_InterruptHandler)TxIntrHandler,
            AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
            (Xil_InterruptHandler)RxIntrHandler,
            AxiDmaPtr);
    if (Status != XST_SUCCESS) {
        return Status;
    }

    XScuGic_Enable(IntcInstancePtr, TxIntrId);
    XScuGic_Enable(IntcInstancePtr, RxIntrId);


#endif

    /* Enable interrupts from the hardware */

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)INTC_HANDLER,
            (void *)IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

static void DisableIntrSystem(INTC * IntcInstancePtr,
        u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
    /* Disconnect the interrupts for the DMA TX and RX channels */
    XIntc_Disconnect(IntcInstancePtr, TxIntrId);
    XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
    XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
    XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}
