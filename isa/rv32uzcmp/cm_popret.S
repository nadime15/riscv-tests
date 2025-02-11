#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

init:
    # Set initial sp
    la sp, tdat_end

test:

	# TEST_1

	jal ra, test_1

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail

	# TEST_2

	jal ra, test_2

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail

	# TEST_3

	jal ra, test_3

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail

	# TEST_4

	jal ra, test_4

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail

	# TEST_5

	jal ra, test_5

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0xA5AA1C2E
	bne x8, x7, fail


	# TEST_6

	jal ra, test_6

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xCCF33DE3
	bne x8, x7, fail


	# TEST_7

	jal ra, test_7

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x4C624DAA
	bne x8, x7, fail


	# TEST_8

	jal ra, test_8

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xBCED584C
	bne x8, x7, fail


	# TEST_9

	jal ra, test_9

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0xCC967FCA
	bne x8, x7, fail

	li x7, 0xBFC17E41
	bne x9, x7, fail


	# TEST_10

	jal ra, test_10

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x0BAFBDDB
	bne x8, x7, fail

	li x7, 0x82280237
	bne x9, x7, fail


	# TEST_11

	jal ra, test_11

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xA9EEDAD0
	bne x8, x7, fail

	li x7, 0x98DF2FF8
	bne x9, x7, fail


	# TEST_12

	jal ra, test_12

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xF1A5DD59
	bne x8, x7, fail

	li x7, 0x7AAC10CE
	bne x9, x7, fail


	# TEST_13

	jal ra, test_13

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0x386FB33B
	bne x8, x7, fail

	li x7, 0x2FD29FE5
	bne x9, x7, fail

	li x7, 0x3366FC8A
	bne x18, x7, fail


	# TEST_14

	jal ra, test_14

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x6B6D4391
	bne x8, x7, fail

	li x7, 0x3E2F126A
	bne x9, x7, fail

	li x7, 0x9CE8ECBE
	bne x18, x7, fail


	# TEST_15

	jal ra, test_15

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x3653CF48
	bne x8, x7, fail

	li x7, 0x40283AF3
	bne x9, x7, fail

	li x7, 0xE63F13B8
	bne x18, x7, fail


	# TEST_16

	jal ra, test_16

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xF161C06A
	bne x8, x7, fail

	li x7, 0x0C0CB158
	bne x9, x7, fail

	li x7, 0x4DEB77FE
	bne x18, x7, fail


	# TEST_17

	jal ra, test_17

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x4AFA3B4C
	bne x8, x7, fail

	li x7, 0xBBDED088
	bne x9, x7, fail

	li x7, 0x6D5DF1CC
	bne x18, x7, fail

	li x7, 0xED05D7AA
	bne x19, x7, fail


	# TEST_18

	jal ra, test_18

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x8181BAE1
	bne x8, x7, fail

	li x7, 0xD836E1C6
	bne x9, x7, fail

	li x7, 0x7C8C712A
	bne x18, x7, fail

	li x7, 0x3C602CBD
	bne x19, x7, fail


	# TEST_19

	jal ra, test_19

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x7259BE9E
	bne x8, x7, fail

	li x7, 0xE9965EB2
	bne x9, x7, fail

	li x7, 0xFDB65C17
	bne x18, x7, fail

	li x7, 0x16B49732
	bne x19, x7, fail


	# TEST_20

	jal ra, test_20

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x049627A3
	bne x8, x7, fail

	li x7, 0x9A38250F
	bne x9, x7, fail

	li x7, 0xBCEADC6E
	bne x18, x7, fail

	li x7, 0xD047713F
	bne x19, x7, fail


	# TEST_21

	jal ra, test_21

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xAFDC56C6
	bne x8, x7, fail

	li x7, 0xB9BE85C9
	bne x9, x7, fail

	li x7, 0x7B25993C
	bne x18, x7, fail

	li x7, 0x9D3718BA
	bne x19, x7, fail

	li x7, 0x16798B7F
	bne x20, x7, fail


	# TEST_22

	jal ra, test_22

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xFAB5CFAE
	bne x8, x7, fail

	li x7, 0x5E03C930
	bne x9, x7, fail

	li x7, 0x5102BF0D
	bne x18, x7, fail

	li x7, 0x97781BDA
	bne x19, x7, fail

	li x7, 0xCCC8F446
	bne x20, x7, fail


	# TEST_23

	jal ra, test_23

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x338F5A17
	bne x8, x7, fail

	li x7, 0xC9E39DED
	bne x9, x7, fail

	li x7, 0xF3581735
	bne x18, x7, fail

	li x7, 0x376F407B
	bne x19, x7, fail

	li x7, 0x308C0913
	bne x20, x7, fail


	# TEST_24

	jal ra, test_24

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xBB23E793
	bne x8, x7, fail

	li x7, 0x16092913
	bne x9, x7, fail

	li x7, 0xCE6C3A8A
	bne x18, x7, fail

	li x7, 0x8C0611B9
	bne x19, x7, fail

	li x7, 0xD38E1A59
	bne x20, x7, fail


	# TEST_25

	jal ra, test_25

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x62FC97B2
	bne x8, x7, fail

	li x7, 0xB800928A
	bne x9, x7, fail

	li x7, 0x73B261D0
	bne x18, x7, fail

	li x7, 0xD2AFDE1C
	bne x19, x7, fail

	li x7, 0xB22CBE2C
	bne x20, x7, fail

	li x7, 0xEBD94694
	bne x21, x7, fail


	# TEST_26

	jal ra, test_26

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xA948E406
	bne x8, x7, fail

	li x7, 0x7B2A8DDE
	bne x9, x7, fail

	li x7, 0x995A2A28
	bne x18, x7, fail

	li x7, 0x4D098904
	bne x19, x7, fail

	li x7, 0x7B6B5016
	bne x20, x7, fail

	li x7, 0x2B4E9660
	bne x21, x7, fail


	# TEST_27

	jal ra, test_27

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x4BBBFC8A
	bne x8, x7, fail

	li x7, 0x5E855DFF
	bne x9, x7, fail

	li x7, 0xBAD971F3
	bne x18, x7, fail

	li x7, 0xDFD5FF61
	bne x19, x7, fail

	li x7, 0x9427F93F
	bne x20, x7, fail

	li x7, 0x9CF7E37C
	bne x21, x7, fail


	# TEST_28

	jal ra, test_28

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x2EAB99AE
	bne x8, x7, fail

	li x7, 0x40C3A5AA
	bne x9, x7, fail

	li x7, 0x3EC2A665
	bne x18, x7, fail

	li x7, 0xD6680E66
	bne x19, x7, fail

	li x7, 0x5F6B7FB0
	bne x20, x7, fail

	li x7, 0x095290C4
	bne x21, x7, fail


	# TEST_29

	jal ra, test_29

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xD3135124
	bne x8, x7, fail

	li x7, 0xA463341E
	bne x9, x7, fail

	li x7, 0x609330C5
	bne x18, x7, fail

	li x7, 0x45691122
	bne x19, x7, fail

	li x7, 0x94193354
	bne x20, x7, fail

	li x7, 0xE2E6C419
	bne x21, x7, fail

	li x7, 0x50D82359
	bne x22, x7, fail


	# TEST_30

	jal ra, test_30

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x864CA740
	bne x8, x7, fail

	li x7, 0xF9DA61AB
	bne x9, x7, fail

	li x7, 0x8D29F7BF
	bne x18, x7, fail

	li x7, 0x5043025A
	bne x19, x7, fail

	li x7, 0xD2022DB5
	bne x20, x7, fail

	li x7, 0xF488F083
	bne x21, x7, fail

	li x7, 0x448D6B90
	bne x22, x7, fail


	# TEST_31

	jal ra, test_31

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xE15005A9
	bne x8, x7, fail

	li x7, 0x75D9A3D5
	bne x9, x7, fail

	li x7, 0x0C7EE852
	bne x18, x7, fail

	li x7, 0xB404560D
	bne x19, x7, fail

	li x7, 0xB609BBD8
	bne x20, x7, fail

	li x7, 0xE63AF4DE
	bne x21, x7, fail

	li x7, 0x0D3AA556
	bne x22, x7, fail


	# TEST_32

	jal ra, test_32

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xECE06C3D
	bne x8, x7, fail

	li x7, 0x929101D7
	bne x9, x7, fail

	li x7, 0xFBD23C63
	bne x18, x7, fail

	li x7, 0xFC6522F6
	bne x19, x7, fail

	li x7, 0xC25949D6
	bne x20, x7, fail

	li x7, 0x7B5E8649
	bne x21, x7, fail

	li x7, 0x1F35834E
	bne x22, x7, fail


	# TEST_33

	jal ra, test_33

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x77E2AB80
	bne x8, x7, fail

	li x7, 0x8C097954
	bne x9, x7, fail

	li x7, 0x6A5C1B35
	bne x18, x7, fail

	li x7, 0x35D9A159
	bne x19, x7, fail

	li x7, 0x66451CE3
	bne x20, x7, fail

	li x7, 0x69CA0AF6
	bne x21, x7, fail

	li x7, 0xCF59A81F
	bne x22, x7, fail

	li x7, 0xBC264E91
	bne x23, x7, fail


	# TEST_34

	jal ra, test_34

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x5EF3AB49
	bne x8, x7, fail

	li x7, 0xB09164B1
	bne x9, x7, fail

	li x7, 0xDE475122
	bne x18, x7, fail

	li x7, 0xF8F46161
	bne x19, x7, fail

	li x7, 0x5FECECF1
	bne x20, x7, fail

	li x7, 0x1F79A49A
	bne x21, x7, fail

	li x7, 0xAC2FB87E
	bne x22, x7, fail

	li x7, 0x30C80507
	bne x23, x7, fail


	# TEST_35

	jal ra, test_35

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x23D62A37
	bne x8, x7, fail

	li x7, 0x57710902
	bne x9, x7, fail

	li x7, 0xAA030731
	bne x18, x7, fail

	li x7, 0xDDCE4869
	bne x19, x7, fail

	li x7, 0xCC13A40C
	bne x20, x7, fail

	li x7, 0xE15768ED
	bne x21, x7, fail

	li x7, 0x124A61E1
	bne x22, x7, fail

	li x7, 0x545ACEBE
	bne x23, x7, fail


	# TEST_36

	jal ra, test_36

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x43A9CA3D
	bne x8, x7, fail

	li x7, 0xFEBA6792
	bne x9, x7, fail

	li x7, 0xDCD97CD6
	bne x18, x7, fail

	li x7, 0xD85F6B19
	bne x19, x7, fail

	li x7, 0xE4B1F389
	bne x20, x7, fail

	li x7, 0xE9B721D3
	bne x21, x7, fail

	li x7, 0xAD268B4D
	bne x22, x7, fail

	li x7, 0x0BB72FC6
	bne x23, x7, fail


	# TEST_37

	jal ra, test_37

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x740F5DA8
	bne x8, x7, fail

	li x7, 0x595B6408
	bne x9, x7, fail

	li x7, 0x25354C30
	bne x18, x7, fail

	li x7, 0x2EC9878C
	bne x19, x7, fail

	li x7, 0x18812B01
	bne x20, x7, fail

	li x7, 0xC1506C21
	bne x21, x7, fail

	li x7, 0x203A4665
	bne x22, x7, fail

	li x7, 0xC099AA0C
	bne x23, x7, fail

	li x7, 0xF12118AE
	bne x24, x7, fail


	# TEST_38

	jal ra, test_38

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x6896D41C
	bne x8, x7, fail

	li x7, 0xB990833A
	bne x9, x7, fail

	li x7, 0x3D9B72D7
	bne x18, x7, fail

	li x7, 0x0F5199AA
	bne x19, x7, fail

	li x7, 0x718628B2
	bne x20, x7, fail

	li x7, 0x1F33C78D
	bne x21, x7, fail

	li x7, 0xA4B61592
	bne x22, x7, fail

	li x7, 0xE90A5E33
	bne x23, x7, fail

	li x7, 0xB100A322
	bne x24, x7, fail


	# TEST_39

	jal ra, test_39

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xD90CDFB5
	bne x8, x7, fail

	li x7, 0x504C6400
	bne x9, x7, fail

	li x7, 0xCAFA829B
	bne x18, x7, fail

	li x7, 0x55A9A9E2
	bne x19, x7, fail

	li x7, 0x67E17029
	bne x20, x7, fail

	li x7, 0x170B0A3A
	bne x21, x7, fail

	li x7, 0xC68F9070
	bne x22, x7, fail

	li x7, 0xBC67AB5F
	bne x23, x7, fail

	li x7, 0x17AB1D57
	bne x24, x7, fail


	# TEST_40

	jal ra, test_40

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xEF0E3415
	bne x8, x7, fail

	li x7, 0xBC50E124
	bne x9, x7, fail

	li x7, 0x4D96FFE9
	bne x18, x7, fail

	li x7, 0xAB61F356
	bne x19, x7, fail

	li x7, 0x709F1709
	bne x20, x7, fail

	li x7, 0x392FADA3
	bne x21, x7, fail

	li x7, 0x85C50053
	bne x22, x7, fail

	li x7, 0x1E59CC12
	bne x23, x7, fail

	li x7, 0x103F74AA
	bne x24, x7, fail


	# TEST_41

	jal ra, test_41

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x9284C401
	bne x8, x7, fail

	li x7, 0xC3CCAD28
	bne x9, x7, fail

	li x7, 0x85672112
	bne x18, x7, fail

	li x7, 0xF3289D58
	bne x19, x7, fail

	li x7, 0x32F72BD8
	bne x20, x7, fail

	li x7, 0xD4FE4A64
	bne x21, x7, fail

	li x7, 0x808B54A3
	bne x22, x7, fail

	li x7, 0xB376D0FA
	bne x23, x7, fail

	li x7, 0x835BEDA5
	bne x24, x7, fail

	li x7, 0x8248DEDA
	bne x25, x7, fail


	# TEST_42

	jal ra, test_42

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x09FBA25A
	bne x8, x7, fail

	li x7, 0x3911D03A
	bne x9, x7, fail

	li x7, 0x803BE81B
	bne x18, x7, fail

	li x7, 0x72140EF0
	bne x19, x7, fail

	li x7, 0x1BB4C92D
	bne x20, x7, fail

	li x7, 0x460FD7FE
	bne x21, x7, fail

	li x7, 0x15E8EF14
	bne x22, x7, fail

	li x7, 0xEFAF565F
	bne x23, x7, fail

	li x7, 0x19107BB0
	bne x24, x7, fail

	li x7, 0x666D8D69
	bne x25, x7, fail


	# TEST_43

	jal ra, test_43

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x119B3831
	bne x8, x7, fail

	li x7, 0x91E02169
	bne x9, x7, fail

	li x7, 0xCB750B2A
	bne x18, x7, fail

	li x7, 0x81B330AE
	bne x19, x7, fail

	li x7, 0x93B5815D
	bne x20, x7, fail

	li x7, 0x89EDC24A
	bne x21, x7, fail

	li x7, 0x32984765
	bne x22, x7, fail

	li x7, 0x4AC1FF60
	bne x23, x7, fail

	li x7, 0x17C6CA77
	bne x24, x7, fail

	li x7, 0x73F1919F
	bne x25, x7, fail


	# TEST_44

	jal ra, test_44

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x9451B2D8
	bne x8, x7, fail

	li x7, 0x51D9E635
	bne x9, x7, fail

	li x7, 0x784B6620
	bne x18, x7, fail

	li x7, 0xD3973AC8
	bne x19, x7, fail

	li x7, 0x0BC24242
	bne x20, x7, fail

	li x7, 0xEF774089
	bne x21, x7, fail

	li x7, 0x48C5F73F
	bne x22, x7, fail

	li x7, 0xC3185C09
	bne x23, x7, fail

	li x7, 0xFB268796
	bne x24, x7, fail

	li x7, 0x8BD9DDC6
	bne x25, x7, fail


	# TEST_45

	jal ra, test_45

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xBA6D9CC3
	bne x8, x7, fail

	li x7, 0xC7AD9AC3
	bne x9, x7, fail

	li x7, 0x16743D3B
	bne x18, x7, fail

	li x7, 0x5F1BC38A
	bne x19, x7, fail

	li x7, 0x6C930635
	bne x20, x7, fail

	li x7, 0xFF37FAB1
	bne x21, x7, fail

	li x7, 0x32428197
	bne x22, x7, fail

	li x7, 0xAED13771
	bne x23, x7, fail

	li x7, 0x9C955660
	bne x24, x7, fail

	li x7, 0xDF2CFE29
	bne x25, x7, fail

	li x7, 0xD1706E2B
	bne x26, x7, fail

	li x7, 0xC1CB4E2D
	bne x27, x7, fail


	# TEST_46

	jal ra, test_46

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xEC47E7A9
	bne x8, x7, fail

	li x7, 0x0C9FC91F
	bne x9, x7, fail

	li x7, 0xA4829B6A
	bne x18, x7, fail

	li x7, 0xD52D5955
	bne x19, x7, fail

	li x7, 0x9E06DCFC
	bne x20, x7, fail

	li x7, 0xD160AB33
	bne x21, x7, fail

	li x7, 0xAABEE686
	bne x22, x7, fail

	li x7, 0xD3D8B3BD
	bne x23, x7, fail

	li x7, 0x45D4A641
	bne x24, x7, fail

	li x7, 0xE1F393C0
	bne x25, x7, fail

	li x7, 0x87ABAC8E
	bne x26, x7, fail

	li x7, 0x4B05CD8A
	bne x27, x7, fail


	# TEST_47

	jal ra, test_47

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xB8A669EE
	bne x8, x7, fail

	li x7, 0x33E14406
	bne x9, x7, fail

	li x7, 0xB5B93AE1
	bne x18, x7, fail

	li x7, 0xEB81515D
	bne x19, x7, fail

	li x7, 0x1B108495
	bne x20, x7, fail

	li x7, 0x2748A338
	bne x21, x7, fail

	li x7, 0x63C45E5E
	bne x22, x7, fail

	li x7, 0xD5E29A5E
	bne x23, x7, fail

	li x7, 0xC4EF808C
	bne x24, x7, fail

	li x7, 0xCD0D8F4B
	bne x25, x7, fail

	li x7, 0xBC57140D
	bne x26, x7, fail

	li x7, 0x9C7C7A64
	bne x27, x7, fail


	# TEST_48

	jal ra, test_48

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x6C5B5C28
	bne x8, x7, fail

	li x7, 0xCB583078
	bne x9, x7, fail

	li x7, 0xABF3D71A
	bne x18, x7, fail

	li x7, 0x45F85498
	bne x19, x7, fail

	li x7, 0x19A224A3
	bne x20, x7, fail

	li x7, 0x2DE0856D
	bne x21, x7, fail

	li x7, 0xF34707D5
	bne x22, x7, fail

	li x7, 0xBFFA0906
	bne x23, x7, fail

	li x7, 0x4FDE4132
	bne x24, x7, fail

	li x7, 0x34043AFA
	bne x25, x7, fail

	li x7, 0x172CEF89
	bne x26, x7, fail

	li x7, 0x6FFEE472
	bne x27, x7, fail


	RVTEST_PASS

test_1:
	li TESTNUM, 1

	# Set registers

	cm.push {ra}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popret {ra}, 16

test_2:
	li TESTNUM, 2

	# Set registers

	cm.push {ra}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popret {ra}, 32

test_3:
	li TESTNUM, 3

	# Set registers

	cm.push {ra}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popret {ra}, 48

test_4:
	li TESTNUM, 4

	# Set registers

	cm.push {ra}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popret {ra}, 64

test_5:
	li TESTNUM, 5

	# Set registers
	li x8, 0xA5AA1C2E

	cm.push {ra, s0}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popret  {ra, s0}, 16

test_6:
	li TESTNUM, 6

	# Set registers
	li x8, 0xCCF33DE3

	cm.push {ra, s0}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popret  {ra, s0}, 32

test_7:
	li TESTNUM, 7

	# Set registers
	li x8, 0x4C624DAA

	cm.push {ra, s0}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popret  {ra, s0}, 48

test_8:
	li TESTNUM, 8

	# Set registers
	li x8, 0xBCED584C

	cm.push {ra, s0}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popret  {ra, s0}, 64

test_9:
	li TESTNUM, 9

	# Set registers
	li x8, 0xCC967FCA
	li x9, 0xBFC17E41

	cm.push {ra, s0-s1}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popret  {ra, s0-s1}, 16

test_10:
	li TESTNUM, 10

	# Set registers
	li x8, 0x0BAFBDDB
	li x9, 0x82280237

	cm.push {ra, s0-s1}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popret  {ra, s0-s1}, 32

test_11:
	li TESTNUM, 11

	# Set registers
	li x8, 0xA9EEDAD0
	li x9, 0x98DF2FF8

	cm.push {ra, s0-s1}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popret  {ra, s0-s1}, 48

test_12:
	li TESTNUM, 12

	# Set registers
	li x8, 0xF1A5DD59
	li x9, 0x7AAC10CE

	cm.push {ra, s0-s1}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popret  {ra, s0-s1}, 64

test_13:
	li TESTNUM, 13

	# Set registers
	li x8, 0x386FB33B
	li x9, 0x2FD29FE5
	li x18, 0x3366FC8A

	cm.push {ra, s0-s2}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000

	cm.popret  {ra, s0-s2}, 16

test_14:
	li TESTNUM, 14

	# Set registers
	li x8, 0x6B6D4391
	li x9, 0x3E2F126A
	li x18, 0x9CE8ECBE

	cm.push {ra, s0-s2}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000

	cm.popret  {ra, s0-s2}, 32

test_15:
	li TESTNUM, 15

	# Set registers
	li x8, 0x3653CF48
	li x9, 0x40283AF3
	li x18, 0xE63F13B8

	cm.push {ra, s0-s2}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000

	cm.popret  {ra, s0-s2}, 48

test_16:
	li TESTNUM, 16

	# Set registers
	li x8, 0xF161C06A
	li x9, 0x0C0CB158
	li x18, 0x4DEB77FE

	cm.push {ra, s0-s2}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000

	cm.popret  {ra, s0-s2}, 64

test_17:
	li TESTNUM, 17

	# Set registers
	li x8, 0x4AFA3B4C
	li x9, 0xBBDED088
	li x18, 0x6D5DF1CC
	li x19, 0xED05D7AA

	cm.push {ra, s0-s3}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000

	cm.popret  {ra, s0-s3}, 32

test_18:
	li TESTNUM, 18

	# Set registers
	li x8, 0x8181BAE1
	li x9, 0xD836E1C6
	li x18, 0x7C8C712A
	li x19, 0x3C602CBD

	cm.push {ra, s0-s3}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000

	cm.popret  {ra, s0-s3}, 48

test_19:
	li TESTNUM, 19

	# Set registers
	li x8, 0x7259BE9E
	li x9, 0xE9965EB2
	li x18, 0xFDB65C17
	li x19, 0x16B49732

	cm.push {ra, s0-s3}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000

	cm.popret  {ra, s0-s3}, 64

test_20:
	li TESTNUM, 20

	# Set registers
	li x8, 0x049627A3
	li x9, 0x9A38250F
	li x18, 0xBCEADC6E
	li x19, 0xD047713F

	cm.push {ra, s0-s3}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000

	cm.popret  {ra, s0-s3}, 80

test_21:
	li TESTNUM, 21

	# Set registers
	li x8, 0xAFDC56C6
	li x9, 0xB9BE85C9
	li x18, 0x7B25993C
	li x19, 0x9D3718BA
	li x20, 0x16798B7F

	cm.push {ra, s0-s4}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000

	cm.popret  {ra, s0-s4}, 32

test_22:
	li TESTNUM, 22

	# Set registers
	li x8, 0xFAB5CFAE
	li x9, 0x5E03C930
	li x18, 0x5102BF0D
	li x19, 0x97781BDA
	li x20, 0xCCC8F446

	cm.push {ra, s0-s4}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000

	cm.popret  {ra, s0-s4}, 48

test_23:
	li TESTNUM, 23

	# Set registers
	li x8, 0x338F5A17
	li x9, 0xC9E39DED
	li x18, 0xF3581735
	li x19, 0x376F407B
	li x20, 0x308C0913

	cm.push {ra, s0-s4}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000

	cm.popret  {ra, s0-s4}, 64

test_24:
	li TESTNUM, 24

	# Set registers
	li x8, 0xBB23E793
	li x9, 0x16092913
	li x18, 0xCE6C3A8A
	li x19, 0x8C0611B9
	li x20, 0xD38E1A59

	cm.push {ra, s0-s4}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000

	cm.popret  {ra, s0-s4}, 80

test_25:
	li TESTNUM, 25

	# Set registers
	li x8, 0x62FC97B2
	li x9, 0xB800928A
	li x18, 0x73B261D0
	li x19, 0xD2AFDE1C
	li x20, 0xB22CBE2C
	li x21, 0xEBD94694

	cm.push {ra, s0-s5}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000

	cm.popret  {ra, s0-s5}, 32

test_26:
	li TESTNUM, 26

	# Set registers
	li x8, 0xA948E406
	li x9, 0x7B2A8DDE
	li x18, 0x995A2A28
	li x19, 0x4D098904
	li x20, 0x7B6B5016
	li x21, 0x2B4E9660

	cm.push {ra, s0-s5}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000

	cm.popret  {ra, s0-s5}, 48

test_27:
	li TESTNUM, 27

	# Set registers
	li x8, 0x4BBBFC8A
	li x9, 0x5E855DFF
	li x18, 0xBAD971F3
	li x19, 0xDFD5FF61
	li x20, 0x9427F93F
	li x21, 0x9CF7E37C

	cm.push {ra, s0-s5}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000

	cm.popret  {ra, s0-s5}, 64

test_28:
	li TESTNUM, 28

	# Set registers
	li x8, 0x2EAB99AE
	li x9, 0x40C3A5AA
	li x18, 0x3EC2A665
	li x19, 0xD6680E66
	li x20, 0x5F6B7FB0
	li x21, 0x095290C4

	cm.push {ra, s0-s5}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000

	cm.popret  {ra, s0-s5}, 80

test_29:
	li TESTNUM, 29

	# Set registers
	li x8, 0xD3135124
	li x9, 0xA463341E
	li x18, 0x609330C5
	li x19, 0x45691122
	li x20, 0x94193354
	li x21, 0xE2E6C419
	li x22, 0x50D82359

	cm.push {ra, s0-s6}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000

	cm.popret  {ra, s0-s6}, 32

test_30:
	li TESTNUM, 30

	# Set registers
	li x8, 0x864CA740
	li x9, 0xF9DA61AB
	li x18, 0x8D29F7BF
	li x19, 0x5043025A
	li x20, 0xD2022DB5
	li x21, 0xF488F083
	li x22, 0x448D6B90

	cm.push {ra, s0-s6}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000

	cm.popret  {ra, s0-s6}, 48

test_31:
	li TESTNUM, 31

	# Set registers
	li x8, 0xE15005A9
	li x9, 0x75D9A3D5
	li x18, 0x0C7EE852
	li x19, 0xB404560D
	li x20, 0xB609BBD8
	li x21, 0xE63AF4DE
	li x22, 0x0D3AA556

	cm.push {ra, s0-s6}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000

	cm.popret  {ra, s0-s6}, 64

test_32:
	li TESTNUM, 32

	# Set registers
	li x8, 0xECE06C3D
	li x9, 0x929101D7
	li x18, 0xFBD23C63
	li x19, 0xFC6522F6
	li x20, 0xC25949D6
	li x21, 0x7B5E8649
	li x22, 0x1F35834E

	cm.push {ra, s0-s6}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000

	cm.popret  {ra, s0-s6}, 80

test_33:
	li TESTNUM, 33

	# Set registers
	li x8, 0x77E2AB80
	li x9, 0x8C097954
	li x18, 0x6A5C1B35
	li x19, 0x35D9A159
	li x20, 0x66451CE3
	li x21, 0x69CA0AF6
	li x22, 0xCF59A81F
	li x23, 0xBC264E91

	cm.push {ra, s0-s7}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000

	cm.popret  {ra, s0-s7}, 48

test_34:
	li TESTNUM, 34

	# Set registers
	li x8, 0x5EF3AB49
	li x9, 0xB09164B1
	li x18, 0xDE475122
	li x19, 0xF8F46161
	li x20, 0x5FECECF1
	li x21, 0x1F79A49A
	li x22, 0xAC2FB87E
	li x23, 0x30C80507

	cm.push {ra, s0-s7}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000

	cm.popret  {ra, s0-s7}, 64

test_35:
	li TESTNUM, 35

	# Set registers
	li x8, 0x23D62A37
	li x9, 0x57710902
	li x18, 0xAA030731
	li x19, 0xDDCE4869
	li x20, 0xCC13A40C
	li x21, 0xE15768ED
	li x22, 0x124A61E1
	li x23, 0x545ACEBE

	cm.push {ra, s0-s7}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000

	cm.popret  {ra, s0-s7}, 80

test_36:
	li TESTNUM, 36

	# Set registers
	li x8, 0x43A9CA3D
	li x9, 0xFEBA6792
	li x18, 0xDCD97CD6
	li x19, 0xD85F6B19
	li x20, 0xE4B1F389
	li x21, 0xE9B721D3
	li x22, 0xAD268B4D
	li x23, 0x0BB72FC6

	cm.push {ra, s0-s7}, -96

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000

	cm.popret  {ra, s0-s7}, 96

test_37:
	li TESTNUM, 37

	# Set registers
	li x8, 0x740F5DA8
	li x9, 0x595B6408
	li x18, 0x25354C30
	li x19, 0x2EC9878C
	li x20, 0x18812B01
	li x21, 0xC1506C21
	li x22, 0x203A4665
	li x23, 0xC099AA0C
	li x24, 0xF12118AE

	cm.push {ra, s0-s8}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000

	cm.popret  {ra, s0-s8}, 48

test_38:
	li TESTNUM, 38

	# Set registers
	li x8, 0x6896D41C
	li x9, 0xB990833A
	li x18, 0x3D9B72D7
	li x19, 0x0F5199AA
	li x20, 0x718628B2
	li x21, 0x1F33C78D
	li x22, 0xA4B61592
	li x23, 0xE90A5E33
	li x24, 0xB100A322

	cm.push {ra, s0-s8}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000

	cm.popret  {ra, s0-s8}, 64

test_39:
	li TESTNUM, 39

	# Set registers
	li x8, 0xD90CDFB5
	li x9, 0x504C6400
	li x18, 0xCAFA829B
	li x19, 0x55A9A9E2
	li x20, 0x67E17029
	li x21, 0x170B0A3A
	li x22, 0xC68F9070
	li x23, 0xBC67AB5F
	li x24, 0x17AB1D57

	cm.push {ra, s0-s8}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000

	cm.popret  {ra, s0-s8}, 80

test_40:
	li TESTNUM, 40

	# Set registers
	li x8, 0xEF0E3415
	li x9, 0xBC50E124
	li x18, 0x4D96FFE9
	li x19, 0xAB61F356
	li x20, 0x709F1709
	li x21, 0x392FADA3
	li x22, 0x85C50053
	li x23, 0x1E59CC12
	li x24, 0x103F74AA

	cm.push {ra, s0-s8}, -96

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000

	cm.popret  {ra, s0-s8}, 96

test_41:
	li TESTNUM, 41

	# Set registers
	li x8, 0x9284C401
	li x9, 0xC3CCAD28
	li x18, 0x85672112
	li x19, 0xF3289D58
	li x20, 0x32F72BD8
	li x21, 0xD4FE4A64
	li x22, 0x808B54A3
	li x23, 0xB376D0FA
	li x24, 0x835BEDA5
	li x25, 0x8248DEDA

	cm.push {ra, s0-s9}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000

	cm.popret  {ra, s0-s9}, 48

test_42:
	li TESTNUM, 42

	# Set registers
	li x8, 0x09FBA25A
	li x9, 0x3911D03A
	li x18, 0x803BE81B
	li x19, 0x72140EF0
	li x20, 0x1BB4C92D
	li x21, 0x460FD7FE
	li x22, 0x15E8EF14
	li x23, 0xEFAF565F
	li x24, 0x19107BB0
	li x25, 0x666D8D69

	cm.push {ra, s0-s9}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000

	cm.popret  {ra, s0-s9}, 64

test_43:
	li TESTNUM, 43

	# Set registers
	li x8, 0x119B3831
	li x9, 0x91E02169
	li x18, 0xCB750B2A
	li x19, 0x81B330AE
	li x20, 0x93B5815D
	li x21, 0x89EDC24A
	li x22, 0x32984765
	li x23, 0x4AC1FF60
	li x24, 0x17C6CA77
	li x25, 0x73F1919F

	cm.push {ra, s0-s9}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000

	cm.popret  {ra, s0-s9}, 80

test_44:
	li TESTNUM, 44

	# Set registers
	li x8, 0x9451B2D8
	li x9, 0x51D9E635
	li x18, 0x784B6620
	li x19, 0xD3973AC8
	li x20, 0x0BC24242
	li x21, 0xEF774089
	li x22, 0x48C5F73F
	li x23, 0xC3185C09
	li x24, 0xFB268796
	li x25, 0x8BD9DDC6

	cm.push {ra, s0-s9}, -96

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000

	cm.popret  {ra, s0-s9}, 96

test_45:
	li TESTNUM, 45

	# Set registers
	li x8, 0xBA6D9CC3
	li x9, 0xC7AD9AC3
	li x18, 0x16743D3B
	li x19, 0x5F1BC38A
	li x20, 0x6C930635
	li x21, 0xFF37FAB1
	li x22, 0x32428197
	li x23, 0xAED13771
	li x24, 0x9C955660
	li x25, 0xDF2CFE29
	li x26, 0xD1706E2B
	li x27, 0xC1CB4E2D

	cm.push {ra, s0-s11}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000
	li x26, 0x0000000
	li x27, 0x0000000

	cm.popret  {ra, s0-s11}, 64

test_46:
	li TESTNUM, 46

	# Set registers
	li x8, 0xEC47E7A9
	li x9, 0x0C9FC91F
	li x18, 0xA4829B6A
	li x19, 0xD52D5955
	li x20, 0x9E06DCFC
	li x21, 0xD160AB33
	li x22, 0xAABEE686
	li x23, 0xD3D8B3BD
	li x24, 0x45D4A641
	li x25, 0xE1F393C0
	li x26, 0x87ABAC8E
	li x27, 0x4B05CD8A

	cm.push {ra, s0-s11}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000
	li x26, 0x0000000
	li x27, 0x0000000

	cm.popret  {ra, s0-s11}, 80

test_47:
	li TESTNUM, 47

	# Set registers
	li x8, 0xB8A669EE
	li x9, 0x33E14406
	li x18, 0xB5B93AE1
	li x19, 0xEB81515D
	li x20, 0x1B108495
	li x21, 0x2748A338
	li x22, 0x63C45E5E
	li x23, 0xD5E29A5E
	li x24, 0xC4EF808C
	li x25, 0xCD0D8F4B
	li x26, 0xBC57140D
	li x27, 0x9C7C7A64

	cm.push {ra, s0-s11}, -96

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000
	li x26, 0x0000000
	li x27, 0x0000000

	cm.popret  {ra, s0-s11}, 96

test_48:
	li TESTNUM, 48

	# Set registers
	li x8, 0x6C5B5C28
	li x9, 0xCB583078
	li x18, 0xABF3D71A
	li x19, 0x45F85498
	li x20, 0x19A224A3
	li x21, 0x2DE0856D
	li x22, 0xF34707D5
	li x23, 0xBFFA0906
	li x24, 0x4FDE4132
	li x25, 0x34043AFA
	li x26, 0x172CEF89
	li x27, 0x6FFEE472

	cm.push {ra, s0-s11}, -112

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000
	li x19, 0x0000000
	li x20, 0x0000000
	li x21, 0x0000000
	li x22, 0x0000000
	li x23, 0x0000000
	li x24, 0x0000000
	li x25, 0x0000000
	li x26, 0x0000000
	li x27, 0x0000000

	cm.popret  {ra, s0-s11}, 112

fail:
    RVTEST_FAIL

RVTEST_CODE_END

    .data
RVTEST_DATA_BEGIN

    .align 4
tdat:
    .space 256               # Reserve 256 bytes
tdat_end:

RVTEST_DATA_END