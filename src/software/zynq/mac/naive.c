#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include <math.h>
#include <limits.h>
#include <float.h>

#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */

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

#define TX_BUFFER_BASE          (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE          (MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH          (MEM_BASE_ADDR + 0x004FFFFF)

#define CTRL_MODE                       XPAR_MACACCELERATORTOP_0_BASEADDR
#define CTRL_LOAD_VECTOR        XPAR_MACACCELERATORTOP_0_BASEADDR + 0x00000004

#define ACCEL_0_BASE            XPAR_MACACCELERATORTOP_0_BASEADDR
#define ACCEL_1_BASE            XPAR_MACACCELERATORTOP_1_BASEADDR
#define ACCEL_2_BASE            XPAR_MACACCELERATORTOP_2_BASEADDR
#define ACCEL_3_BASE            XPAR_MACACCELERATORTOP_3_BASEADDR

#define ACCEL_0_DMA                     XPAR_AXIDMA_0_DEVICE_ID
#define ACCEL_1_DMA                     XPAR_AXIDMA_1_DEVICE_ID
#define ACCEL_2_DMA                     XPAR_AXIDMA_2_DEVICE_ID
#define ACCEL_3_DMA                     XPAR_AXIDMA_3_DEVICE_ID

/* Timeout loop counter for reset
*/
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

/**************************** Type Definitions *******************************/


/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */

static XAxiDma AxiDma;          /* Instance of the XAxiDma */


/***************** Macros (Inline Functions) Definitions *********************/

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

int basicTest();
int neuralNetworkExample();
int initiateDma(int *src, int *dest, int inputLength, int outputLength);
int initiateMM2SDma(int *src, int length);

int main(void)
{
    int Status;
    XAxiDma_Config *Config;

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

    // DMA engine should not have scatter gather
    if(XAxiDma_HasSg(&AxiDma)){
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }

    /* Disable all interrupts before setup */
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
            XAXIDMA_DEVICE_TO_DMA);

    xil_printf("Running basic test...\n");
    basicTest();
    xil_printf("Running neural network example...\n");
    neuralNetworkExample();
    xil_printf("Neural network example complete\n");
    xil_printf("--- Exiting main() --- \r\n");

    return XST_SUCCESS;
}

int basicTest()
{
    int Status;
    int Tries = NUMBER_OF_TRANSFERS;
    int Index;
    int *TxBufferPtr;
    int *RxBufferPtr;
    int Value;

    TxBufferPtr = (int*)TX_BUFFER_BASE;
    RxBufferPtr = (int*)RX_BUFFER_BASE;

    /**
     * Load weights into the accelerator ( Vector of 0 to MAX_PKT_LEN )
     */

    // Weight values
    Value = 1;
    for(int j = 0; j < INPUT_DIM; j++) {
        TxBufferPtr[j] = Value;
        Value = Value + 1;
    }

    // Enable weight mode
    load_weights();

    for (Index = 0; Index < HIDDEN_UNITS; Index++) {
        write_load_vector(Index);

        /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
         * is enabled
         */
        Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, INPUT_DIM * 4);
        Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) TxBufferPtr,
                INPUT_DIM * 4, XAXIDMA_DMA_TO_DEVICE);

        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }

        /*
         * Wait TX done
         */
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {
            /* NOP */
        }
        // xil_printf("Weight %d loaded\r\n", Index);
    }

    clear_load_vector();
    clear();
    compute();

    for(Index = 0; Index < Tries; Index ++) {
        /* Send a packet */
        Value = -Index;
        for (int j = 0; j < INPUT_DIM; j++) {
            TxBufferPtr[j] = Value;
            Value = Value + 1;
        }

        /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
         * is enabled
         */
        Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, INPUT_DIM * 4);

        /*
         * Initiate S2MM transaction when accelerator is ready to write
         */
        Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) RxBufferPtr,
                HIDDEN_UNITS * 4, XAXIDMA_DEVICE_TO_DMA);

        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }

        /*
         * Initiate MM2S transaction
         */
        Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) TxBufferPtr,
                INPUT_DIM * 4, XAXIDMA_DMA_TO_DEVICE);

        if (Status != XST_SUCCESS) {
            return XST_FAILURE;
        }

        /*
         * Wait TX done and RX done
         */
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE) && XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
            /* NOP */
        }

        clear();
        compute();

        // Flush previous result from cache
        Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, HIDDEN_UNITS * 4);

        int Expected = 0;
        for (int i = 0; i < INPUT_DIM; i++) {
            Expected += TxBufferPtr[i] * (i+1);
        }

        // Check read data from accelerator
        for (int i = 0; i < HIDDEN_UNITS; i++) {
            if (Expected != RxBufferPtr[i]) {
                xil_printf("ERROR: %d != %d\n", RxBufferPtr[i], Expected);
                return XST_FAILURE;
            }
        }
    }

    xil_printf("Successfully ran AXI DMA interrupt Example\r\n");
    return XST_SUCCESS;
}

int neuralNetworkExample()
{
    int Status;
    int *TxBufferPtr;
    int *RxBufferPtr;

    TxBufferPtr = (int*)TX_BUFFER_BASE;
    RxBufferPtr = (int*)RX_BUFFER_BASE;

    int *x_test = (int*) X_TEST_BASE;
    int *y_test = (int*) Y_TEST_BASE;
    int *l1_w = (int*) L1_W_BASE;
    int *l1_b = (int*) L1_B_BASE;
    int *l2_w = (int*) L2_W_BASE;
    int *l2_b = (int*) L2_B_BASE;
    int *result = (int*) RESULT_BASE;

    int matched = 0;


    for (int i = 0; i < 512; i++) {
        result[i] = 0;
    }

    for (int input = 0; input < 10000; input++) {

        // Layer 1 - 512 units
        for (int i = 0; i < 512; i+=HIDDEN_UNITS) {
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
            for (int j = i; j < i+24; j++) {
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
    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE) && XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
        // NOP
    }

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
    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {
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

