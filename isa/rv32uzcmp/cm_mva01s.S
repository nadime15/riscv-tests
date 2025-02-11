#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN
    
init:
    # Set initial sp
    la sp, tdat_end

test_1:
	li TESTNUM, 1

	li x8, 0x171583E5
	li x8, 0xA630F795
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x8

	bne x8, x10, fail
	bne x8, x11, fail

test_2:
	li TESTNUM, 2

	li x8, 0xBCE7D2D2
	li x9, 0xC672A6D2
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x9

	bne x8, x10, fail
	bne x9, x11, fail

test_3:
	li TESTNUM, 3

	li x8, 0xC7A469F0
	li x18, 0x8A7418BF
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x18

	bne x8, x10, fail
	bne x18, x11, fail

test_4:
	li TESTNUM, 4

	li x8, 0x11AC9B3C
	li x19, 0xFF0AA029
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x19

	bne x8, x10, fail
	bne x19, x11, fail

test_5:
	li TESTNUM, 5

	li x8, 0xC6A9E34F
	li x20, 0x7D058A0E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x20

	bne x8, x10, fail
	bne x20, x11, fail

test_6:
	li TESTNUM, 6

	li x8, 0x7D0448D8
	li x21, 0x646F0D9A
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x21

	bne x8, x10, fail
	bne x21, x11, fail

test_7:
	li TESTNUM, 7

	li x8, 0xC3674637
	li x22, 0x40111B35
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x22

	bne x8, x10, fail
	bne x22, x11, fail

test_8:
	li TESTNUM, 8

	li x8, 0xD4E162B3
	li x23, 0xDFEC2A2E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x23

	bne x8, x10, fail
	bne x23, x11, fail

test_9:
	li TESTNUM, 9

	li x9, 0x289E8128
	li x8, 0xB61C6F7E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x8

	bne x9, x10, fail
	bne x8, x11, fail

test_10:
	li TESTNUM, 10

	li x9, 0x84606425
	li x9, 0x9AA3D5AD
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x9

	bne x9, x10, fail
	bne x9, x11, fail

test_11:
	li TESTNUM, 11

	li x9, 0xB3A04B9D
	li x18, 0x495F1E0B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x18

	bne x9, x10, fail
	bne x18, x11, fail

test_12:
	li TESTNUM, 12

	li x9, 0x7D1BC326
	li x19, 0xF4AD2E5D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x19

	bne x9, x10, fail
	bne x19, x11, fail

test_13:
	li TESTNUM, 13

	li x9, 0xF672AA05
	li x20, 0x5CD7A2DF
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x20

	bne x9, x10, fail
	bne x20, x11, fail

test_14:
	li TESTNUM, 14

	li x9, 0x27C773EF
	li x21, 0x366DC8D9
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x21

	bne x9, x10, fail
	bne x21, x11, fail

test_15:
	li TESTNUM, 15

	li x9, 0xC2AFB1DE
	li x22, 0xF07F3714
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x22

	bne x9, x10, fail
	bne x22, x11, fail

test_16:
	li TESTNUM, 16

	li x9, 0xF568928D
	li x23, 0x4172AB9B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x23

	bne x9, x10, fail
	bne x23, x11, fail

test_17:
	li TESTNUM, 17

	li x18, 0xC6962138
	li x8, 0xA26B5144
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x8

	bne x18, x10, fail
	bne x8, x11, fail

test_18:
	li TESTNUM, 18

	li x18, 0x7B18A8D4
	li x9, 0x3E470D9D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x9

	bne x18, x10, fail
	bne x9, x11, fail

test_19:
	li TESTNUM, 19

	li x18, 0x4D814A1A
	li x18, 0x3F4FE3F1
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x18

	bne x18, x10, fail
	bne x18, x11, fail

test_20:
	li TESTNUM, 20

	li x18, 0x3AA831B6
	li x19, 0x6098119D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x19

	bne x18, x10, fail
	bne x19, x11, fail

test_21:
	li TESTNUM, 21

	li x18, 0x130571A0
	li x20, 0x052385C5
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x20

	bne x18, x10, fail
	bne x20, x11, fail

test_22:
	li TESTNUM, 22

	li x18, 0xB3CCDA11
	li x21, 0x70DD2493
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x21

	bne x18, x10, fail
	bne x21, x11, fail

test_23:
	li TESTNUM, 23

	li x18, 0xE7F6D020
	li x22, 0x1A62941E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x22

	bne x18, x10, fail
	bne x22, x11, fail

test_24:
	li TESTNUM, 24

	li x18, 0x668340A3
	li x23, 0x5FB6B091
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x23

	bne x18, x10, fail
	bne x23, x11, fail

test_25:
	li TESTNUM, 25

	li x19, 0x7C40C6C4
	li x8, 0x292DDB1D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x8

	bne x19, x10, fail
	bne x8, x11, fail

test_26:
	li TESTNUM, 26

	li x19, 0x63A2DAFE
	li x9, 0x34049859
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x9

	bne x19, x10, fail
	bne x9, x11, fail

test_27:
	li TESTNUM, 27

	li x19, 0xE259BEB5
	li x18, 0xEA4C2FD5
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x18

	bne x19, x10, fail
	bne x18, x11, fail

test_28:
	li TESTNUM, 28

	li x19, 0x594BF630
	li x19, 0x5133A4A8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x19

	bne x19, x10, fail
	bne x19, x11, fail

test_29:
	li TESTNUM, 29

	li x19, 0x1765BB05
	li x20, 0x7790E3C3
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x20

	bne x19, x10, fail
	bne x20, x11, fail

test_30:
	li TESTNUM, 30

	li x19, 0xCB190ED0
	li x21, 0x94E612C7
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x21

	bne x19, x10, fail
	bne x21, x11, fail

test_31:
	li TESTNUM, 31

	li x19, 0x3CC95382
	li x22, 0xCF94CB7C
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x22

	bne x19, x10, fail
	bne x22, x11, fail

test_32:
	li TESTNUM, 32

	li x19, 0xA1B20835
	li x23, 0xCF7028E6
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x23

	bne x19, x10, fail
	bne x23, x11, fail

test_33:
	li TESTNUM, 33

	li x20, 0xFABAE90D
	li x8, 0x3A764252
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x8

	bne x20, x10, fail
	bne x8, x11, fail

test_34:
	li TESTNUM, 34

	li x20, 0xC5220542
	li x9, 0x5F448F8E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x9

	bne x20, x10, fail
	bne x9, x11, fail

test_35:
	li TESTNUM, 35

	li x20, 0xB0211977
	li x18, 0xBFA2B46B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x18

	bne x20, x10, fail
	bne x18, x11, fail

test_36:
	li TESTNUM, 36

	li x20, 0xCB1A1CB9
	li x19, 0xDAB5DCE8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x19

	bne x20, x10, fail
	bne x19, x11, fail

test_37:
	li TESTNUM, 37

	li x20, 0x1B1B93F6
	li x20, 0x7F4372B5
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x20

	bne x20, x10, fail
	bne x20, x11, fail

test_38:
	li TESTNUM, 38

	li x20, 0x2BA091DE
	li x21, 0x1D83562D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x21

	bne x20, x10, fail
	bne x21, x11, fail

test_39:
	li TESTNUM, 39

	li x20, 0x9D513333
	li x22, 0xFDF9600D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x22

	bne x20, x10, fail
	bne x22, x11, fail

test_40:
	li TESTNUM, 40

	li x20, 0x2271EF79
	li x23, 0x0437B494
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x23

	bne x20, x10, fail
	bne x23, x11, fail

test_41:
	li TESTNUM, 41

	li x21, 0x2A375885
	li x8, 0x0BC69045
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x8

	bne x21, x10, fail
	bne x8, x11, fail

test_42:
	li TESTNUM, 42

	li x21, 0x9EED1B70
	li x9, 0x4774BA22
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x9

	bne x21, x10, fail
	bne x9, x11, fail

test_43:
	li TESTNUM, 43

	li x21, 0x9679CEA5
	li x18, 0x0F1CF6E0
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x18

	bne x21, x10, fail
	bne x18, x11, fail

test_44:
	li TESTNUM, 44

	li x21, 0x13FAFA02
	li x19, 0xE0935B3E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x19

	bne x21, x10, fail
	bne x19, x11, fail

test_45:
	li TESTNUM, 45

	li x21, 0x8A777D14
	li x20, 0xF92CD3FC
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x20

	bne x21, x10, fail
	bne x20, x11, fail

test_46:
	li TESTNUM, 46

	li x21, 0x5C5EFF7F
	li x21, 0x07893171
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x21

	bne x21, x10, fail
	bne x21, x11, fail

test_47:
	li TESTNUM, 47

	li x21, 0x996A754D
	li x22, 0xAD379023
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x22

	bne x21, x10, fail
	bne x22, x11, fail

test_48:
	li TESTNUM, 48

	li x21, 0x4A1E58AA
	li x23, 0x38B6948A
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x23

	bne x21, x10, fail
	bne x23, x11, fail

test_49:
	li TESTNUM, 49

	li x22, 0x6622CDE8
	li x8, 0xFC6B701D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x8

	bne x22, x10, fail
	bne x8, x11, fail

test_50:
	li TESTNUM, 50

	li x22, 0x77906963
	li x9, 0x4E294B6E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x9

	bne x22, x10, fail
	bne x9, x11, fail

test_51:
	li TESTNUM, 51

	li x22, 0x124D33B2
	li x18, 0xFC0B8976
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x18

	bne x22, x10, fail
	bne x18, x11, fail

test_52:
	li TESTNUM, 52

	li x22, 0x537A8B4C
	li x19, 0x93B29D12
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x19

	bne x22, x10, fail
	bne x19, x11, fail

test_53:
	li TESTNUM, 53

	li x22, 0xF059B44B
	li x20, 0x6E505033
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x20

	bne x22, x10, fail
	bne x20, x11, fail

test_54:
	li TESTNUM, 54

	li x22, 0xCD07225F
	li x21, 0xEC01FACC
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x21

	bne x22, x10, fail
	bne x21, x11, fail

test_55:
	li TESTNUM, 55

	li x22, 0x89BD2CEF
	li x22, 0x63FE6A34
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x22

	bne x22, x10, fail
	bne x22, x11, fail

test_56:
	li TESTNUM, 56

	li x22, 0x0CE2323A
	li x23, 0x0E4A2D01
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x23

	bne x22, x10, fail
	bne x23, x11, fail

test_57:
	li TESTNUM, 57

	li x23, 0x6CBB164E
	li x8, 0x5AC85EF7
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x8

	bne x23, x10, fail
	bne x8, x11, fail

test_58:
	li TESTNUM, 58

	li x23, 0x6029261E
	li x9, 0x6180B912
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x9

	bne x23, x10, fail
	bne x9, x11, fail

test_59:
	li TESTNUM, 59

	li x23, 0xF81D0B1E
	li x18, 0xADE604AD
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x18

	bne x23, x10, fail
	bne x18, x11, fail

test_60:
	li TESTNUM, 60

	li x23, 0x0A74AC85
	li x19, 0x35BC2414
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x19

	bne x23, x10, fail
	bne x19, x11, fail

test_61:
	li TESTNUM, 61

	li x23, 0xC7D78DC4
	li x20, 0x45D092D2
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x20

	bne x23, x10, fail
	bne x20, x11, fail

test_62:
	li TESTNUM, 62

	li x23, 0xD1EB82F2
	li x21, 0xC33277B4
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x21

	bne x23, x10, fail
	bne x21, x11, fail

test_63:
	li TESTNUM, 63

	li x23, 0x9E8267A4
	li x22, 0x36BE0062
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x22

	bne x23, x10, fail
	bne x22, x11, fail

test_64:
	li TESTNUM, 64

	li x23, 0xB31DAE25
	li x23, 0xF0DB873F
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x23

	bne x23, x10, fail
	bne x23, x11, fail

    RVTEST_PASS

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