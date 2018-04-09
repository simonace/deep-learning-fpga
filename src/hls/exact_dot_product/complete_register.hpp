#include "ap_int.h"

#define MANTISSA 10
#define EXPONENT 5
#define WORD_LENGTH 8
#define COMPLETE_REGISTER_WORDS 10

// Half precision
typedef ap_uint<16> data_t;
typedef ap_uint<EXPONENT> exponent_t;
typedef ap_uint<MANTISSA+1> mantissa_t;

// This is actually a floating point number, but we construct it with a 32-bit unsigned integer
typedef ap_uint<32> result_data_t;
typedef ap_uint<EXPONENT+1> exact_exponent_t;
typedef ap_uint<(MANTISSA+1) * 2> exact_mantissa_t;
typedef ap_int<(MANTISSA+1) * 2 + 1> exact_mantissa_2s_t;
typedef ap_int<128> exact_mantissa_shifted_t;
typedef ap_int<128> cr_t;
