#include <iostream>
#include "stdio.h"

#include "complete_register.cpp"

#define SUMMANDS 50000

int cr_test()
{
	CompleteRegister cr;

	// Read file
	data_t *mem = (data_t*) malloc(SUMMANDS * 2 * sizeof(data_t));

	// Data file has to be 32 bits because that's how simulation deals with data types.
	FILE *fd = fopen("test.dat", "rb");
	int read = fread(mem, 1, SUMMANDS * 2 * sizeof(data_t), fd);
	printf("%d bytes read to memory.\n", read);
	printf("%d bytes per entry\n", sizeof(data_t));

	half result;
	half inter;
	for (int i = 0; i < SUMMANDS; i++) {
		cr.multiply_accumulate(mem[i], mem[SUMMANDS+i]);
		inter.set_bits(cr.get_result());
		if (i == 22327) {
			std::cout << "Iteration #" << i+1 << ": " << std::endl;
			std::cout << (float) inter << std::endl;
		}
	}
	result.set_bits(cr.get_result());

	std::cout << "Result: " << (float) result << std::endl;
	cr.clear();
	result.set_bits(cr.get_result());
	std::cout << "Result: " << (float) result << std::endl;

	fclose(fd);
	return 0;
}
