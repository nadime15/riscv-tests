#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

init:

    // Depending on the settings of mstateen0[FCSR] and sstateen0[FCSR]
    // it may either trigger an illegal instruction exception or succeed
    fadd.s  x7, x5, x5 
	
    //csrr x5, fcsr


    RVTEST_PASS

fail:
    RVTEST_FAIL

RVTEST_CODE_END

    .data
RVTEST_DATA_BEGIN

RVTEST_DATA_END