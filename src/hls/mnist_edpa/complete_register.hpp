#define MANTISSA 10
#define EXPONENT 5
#define CR_LENGTH 80

// Half precision
typedef ap_uint<EXPONENT> exponent_t;
typedef ap_uint<MANTISSA+1> mantissa_t;

// This is actually a floating point number, but we construct it with a 32-bit unsigned integer
typedef ap_uint<EXPONENT+1> exact_exponent_t;
typedef ap_uint<(MANTISSA+1) * 2> exact_mantissa_t;
typedef ap_int<(MANTISSA+1) * 2 + 1> exact_mantissa_2s_t;
typedef ap_int<CR_LENGTH> exact_mantissa_shifted_t;
typedef ap_int<CR_LENGTH> cr_t;

/**
 * Long shift implementation of a Complete Register for half precision exact dot product accumulation.
 */
template<class data_T, class result_data_T>
class CompleteRegister {
public:
	CompleteRegister()
	{
		m_cr = 0;
	}

	/**
	 * Returns the normalized float from the complete register.
	 */
	result_data_T get_result()
	{
		ap_uint<1> sign = m_cr < 0;

		// Count leading zeros/ones in complete register
		ap_uint<8> leading_signs;
		if (sign) {
			cr_t flipped = m_cr;
			flipped.b_not();
			leading_signs = flipped.countLeadingZeros();
		} else {
			leading_signs = m_cr.countLeadingZeros();
			if (leading_signs == CR_LENGTH) {
				return 0;
			}
		}

		// ap_uint<8> exponent = 127 + (64-leading_signs+1);
		ap_uint<5> exponent = 15 + (CR_LENGTH/2-leading_signs+1);

		// ap_uint<23> mantissa = 0;
		ap_uint<10> mantissa = 0;
		GetMantissa: for (int i = 0; i < 10; i++) {
			if (CR_LENGTH-leading_signs-2-i >= 0) {
				// mantissa[22-i] = m_cr[128-leading_signs-i-2];
				mantissa[9-i] = m_cr[CR_LENGTH-leading_signs-i-2];
			} else {
				mantissa[9-i] = false;
			}
		}

		if (sign) {
			FlipMantissa: for (int i = 0; i < 10; i++) {
				mantissa[i] = !mantissa[i];
			}
			mantissa += 1;
		}

		result_data_T result = (sign, exponent, mantissa);

		return result;
	}

	/**
	 * Multiplies and accumulates into the complete register in exact form.
	 */
	void multiply_accumulate(const data_T in1, const data_T in2)
	{
		// Unpack the floating point numbers
		bool s1 = get_sign(in1);
		mantissa_t m1 = get_mantissa(in1);
		exponent_t e1 = get_exponent(in1);

		bool s2 = get_sign(in2);
		mantissa_t m2 = get_mantissa(in2);
		exponent_t e2 = get_exponent(in2);

		// Perform exact multiplication
		bool exact_s = sign_mult(s1, s2);
		exact_mantissa_t exact_m = mantissa_mult(m1, m2);
		exact_exponent_t exact_e= exponent_mult(e1, e2);

		// Convert mantissa into 2s complement
		exact_mantissa_2s_t exact_m2s = to_2s_complement(exact_s, exact_m);

		// Shift mantissa for alignment
		int to_shift = exact_e - 30;
		cr_t shifted = exact_m2s;
		shifted = shifted << (CR_LENGTH/2 - 23 + 1 + to_shift);

		// TODO: Split complete register into separate words
		m_cr += shifted;
	}

	/**
	 * Clears the complete register.
	 */
	void clear()
	{
		m_cr = 0;
	}

private:
	cr_t m_cr;

	mantissa_t get_mantissa(const ap_uint<EXPONENT+MANTISSA+1> num)
	{
		mantissa_t mantissa = num.range(MANTISSA-1, 0);

		// Implicit 1 for mantissa- ignore subnormal values
		mantissa[MANTISSA] = true;

		return mantissa;
	}

	exponent_t get_exponent(const ap_uint<EXPONENT+MANTISSA+1> num)
	{
		return num.range(EXPONENT+MANTISSA, MANTISSA);
	}

	bool get_sign(data_T num)
	{
		bool sign = false;
		sign = num.get_bit(MANTISSA + EXPONENT);

		return sign;
	}

	exact_mantissa_t mantissa_mult(const mantissa_t mantissa1, const mantissa_t mantissa2)
	{
		return mantissa1 * mantissa2;
	}

	exact_exponent_t exponent_mult(exponent_t exp1, exponent_t exp2)
	{
		return exp1 + exp2;
	}

	bool sign_mult(const bool sign1, const bool sign2)
	{
		return sign1 ^ sign2;
	}

	/**
	 * Converts the mantissa into 2s complement. This removes the need for both carry
	 * and borrow logic in the complete register.
	 */
	exact_mantissa_2s_t to_2s_complement(const bool sign, const exact_mantissa_t value)
	{
		exact_mantissa_2s_t result = value;
		if (sign) {
			return -result;
		} else {
			return result;
		}
	}
};
