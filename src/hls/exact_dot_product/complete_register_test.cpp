#include <iostream>
#include "stdio.h"

#include "complete_register.cpp"

#define SUMMANDS 50000

int main()
{
	CompleteRegister cr;

	// Read file
	data_t *mem = (data_t*) malloc(SUMMANDS * 2 * sizeof(data_t));

	// Data file has to be 32 bits because that's how simulation deals with data types.
	FILE *fd = fopen("test.dat", "rb");
	int read = fread(mem, 1, SUMMANDS * 2 * sizeof(data_t), fd);
	printf("%d bytes read to memory.\n", read);
	printf("%d bytes per entry\n", sizeof(data_t));

	float result;
	data_t expected = 0;
	for (int i = 0; i < SUMMANDS; i++) {
		cr.multiply_accumulate(mem[i], mem[SUMMANDS+i]);
	}
	result = cr.get_result();

	std::cout << "Result: " << (float) result << std::endl;
	std::cout << "Expected: " << (float) expected << std::endl;
	cr.clear();
	result = cr.get_result();
	std::cout << "Result: " << (float) result << std::endl;

	fclose(fd);
	return 0;
}
