#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

#define JUMP_TABLE_ENTRIES 8 * 4 # Define the number of entries in the jump table (32)

init:
    # Set initial sp
    la sp, tdat_end

    # Save sp
    mv x5, sp

# We need to recalculate the jump table addresses.
# This is required in virtual mode, otherwise the jump table addresses
# are hardcoded, and the OS may map the code to different addresses

adjust_jump_table:
    la t0, jump_table	# Load base address of jump_table into t0
    
    lw t1, 0(t0)	# Load offset for cm.jt 0x0
    add t1, t1, t0	# Compute actual address
    sw t1, 0(t0)	# Store back into the jump table 

    lw t1, 4(t0) 	# Load offset for cm.jalt 0x1
    add t1, t1, t0  
    sw t1, 4(t0)
	
    lw t1, 20(t0)	# Load offset for cm.jalt 0x20
    add t1, t1, t0  
    sw t1, 20(t0)
    
    lw t1, 124(t0)	# Load offset for cm.jalt 0x1F
    add t1, t1, t0  
    sw t1, 124(t0)
 
test_1:
    li TESTNUM, 1	
    
    la t0, jump_table
	  	
    csrw jvt, t0
    csrr t0, jvt

    auipc ra, 0        # ra = pc
    addi  ra, ra, 4    # ra = ra + 4    	    
    
    cm.jt 0x0
        
test_2:
    li TESTNUM, 2    	   
    
    auipc ra, 0        # ra = pc
    addi  ra, ra, 4    # ra = ra + 4
    cm.jt 0x1

test_3:
    li TESTNUM, 3
  
    auipc ra, 0        # ra = pc
    addi  ra, ra, 4    # ra = ra + 4
    cm.jt 0x5    
  
test_4:
    li TESTNUM, 4
  
    auipc ra, 0        # ra = pc  
    addi  ra, ra, 4    # ra = ra + 4
    cm.jt 0x1F  

    RVTEST_PASS
	
fail:
    RVTEST_FAIL
    
target0:
    # Code for target0   
    ret

target1:
    # Code for target1
    ret

target2:
    # Code for target2 
    ret

target3:
    # Code for target3
    ret
        
.align 6  # 64-byte alignment for the jump table
jump_table:
  .rept JUMP_TABLE_ENTRIES
        .word target0 - jump_table
        .word target1 - jump_table
        .word target2 - jump_table
        .word target3 - jump_table
  .endr

RVTEST_CODE_END

    .data
RVTEST_DATA_BEGIN

    .align 4
tdat:
    .space 256	# Reserve 256 bytes
tdat_end:

RVTEST_DATA_END
