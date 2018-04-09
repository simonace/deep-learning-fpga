#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "limits.h"
#include "xtime_l.h"


#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"       /* to use uartns550 */
#endif


#ifdef XPAR_INTC_0_DEVICE_ID
 #include "xintc.h"
#else
 #include "xscugic.h"
#endif

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#define MEM_BASE_ADDR		0x00100000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC		XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
 #define INTC		XScuGic
 #define INTC_HANDLER	XScuGic_InterruptHandler
#endif


/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

#define TEST_CASES 10000
#define INPUT_DIM 784
#define OUTPUT_DIM 10

#define X_TEST_BASE 0x05000000
#define Y_TEST_BASE 0x06000000
#define RESULTS_BASE 0x07000000

#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

#ifdef XPAR_UARTNS550_0_BASEADDR
static void Uart550_Setup(void);
#endif

static XAxiDma AxiDma;		/* Instance of the XAxiDma */
volatile int TxDone;
volatile int RxDone;
volatile int Error;

int compute(XAxiDma *dma, u16 *x_test, u16 *results);

int main(void)
{
	int Status;
	XAxiDma_Config *Config;
	u16 *x_test = (u16 *) X_TEST_BASE;
	u16 *y_test = (u16 *) Y_TEST_BASE;
	u16 *results = (u16 *) RESULTS_BASE;

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

	if (XAxiDma_Selftest(&AxiDma) != XST_SUCCESS) {
		xil_printf("Failed self test!\n");
		return XST_FAILURE;
	}

	/* Disable all interrupts before setup */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);

	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
				XAXIDMA_DEVICE_TO_DMA);

	xil_printf("Starting MNIST test.\n");

    XTime tStart, tEnd;
    XTime_GetTime(&tStart);
	compute(&AxiDma, x_test, results);
    XTime_GetTime(&tEnd);
    printf("Accelerator took %.2f ms.\n", 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000));

	// Flush cache
	Xil_DCacheFlushRange((UINTPTR) results, TEST_CASES * OUTPUT_DIM * 4);

	xil_printf("Successfully ran AXI DMA interrupt Example\r\n");
	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;
}

int compute(XAxiDma *dma, u16 *x_test, u16 *results)
{
	int Status;

	xil_printf("Starting MNIST test.\n");
	for (int i = 0; i < TEST_CASES; i++) {
		Status = XAxiDma_SimpleTransfer(dma, (UINTPTR) (results + i * OUTPUT_DIM), OUTPUT_DIM * 2, XAXIDMA_DEVICE_TO_DMA);
		if (Status != XST_SUCCESS) {
			xil_printf("Failed to initiate DMA from device.\n");
			return XST_FAILURE;
		}

		Status = XAxiDma_SimpleTransfer(dma, (UINTPTR) (x_test + i * INPUT_DIM), INPUT_DIM * 2, XAXIDMA_DMA_TO_DEVICE);
		if (Status != XST_SUCCESS) {
			xil_printf("Failed to initiate DMA to device.\n");
			return XST_FAILURE;
		}

		while (XAxiDma_Busy(dma, XAXIDMA_DMA_TO_DEVICE) || XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
			// NOP
		}

		if (i % 1000 == 0) {
			xil_printf("%d / %d done...\n", i, TEST_CASES);
		}
	}

	return Status;
}

#ifdef XPAR_UARTNS550_0_BASEADDR
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600 and data bits to 8
*
* @param	None
*
* @return	None
*
* @note		None.
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
