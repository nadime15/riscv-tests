#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

init:
    # Set initial sp
    la sp, tdat_end

test_1:
	li TESTNUM, 1

	li x10, 0xC50E8692
	li x11, 0x78E1ED33
	li x8, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x8, x9

	bne x8, x10, fail
	bne x9, x11, fail

test_2:
	li TESTNUM, 2

	li x10, 0xCE671F64
	li x11, 0x3DC738C6
	li x8, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x8, x18

	bne x8, x10, fail
	bne x18, x11, fail

test_3:
	li TESTNUM, 3

	li x10, 0x87902C7C
	li x11, 0xE9E2F8FD
	li x8, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x8, x19

	bne x8, x10, fail
	bne x19, x11, fail

test_4:
	li TESTNUM, 4

	li x10, 0x61546915
	li x11, 0xA9B13050
	li x8, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x8, x20

	bne x8, x10, fail
	bne x20, x11, fail

test_5:
	li TESTNUM, 5

	li x10, 0xDB9D5FDB
	li x11, 0x0CCB74B9
	li x8, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x8, x21

	bne x8, x10, fail
	bne x21, x11, fail

test_6:
	li TESTNUM, 6

	li x10, 0x07C6ABE4
	li x11, 0x795C82AA
	li x8, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x8, x22

	bne x8, x10, fail
	bne x22, x11, fail

test_7:
	li TESTNUM, 7

	li x10, 0x163BE322
	li x11, 0x09FA927D
	li x8, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x8, x23

	bne x8, x10, fail
	bne x23, x11, fail

test_8:
	li TESTNUM, 8

	li x10, 0x4FBF74EB
	li x11, 0x09587084
	li x9, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x9, x8

	bne x9, x10, fail
	bne x8, x11, fail

test_9:
	li TESTNUM, 9

	li x10, 0x38F812AE
	li x11, 0x3500AE35
	li x9, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x9, x18

	bne x9, x10, fail
	bne x18, x11, fail

test_10:
	li TESTNUM, 10

	li x10, 0x9D7B4AD8
	li x11, 0x96A02D13
	li x9, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x9, x19

	bne x9, x10, fail
	bne x19, x11, fail

test_11:
	li TESTNUM, 11

	li x10, 0x5ABFD1E3
	li x11, 0x53ECBD5E
	li x9, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x9, x20

	bne x9, x10, fail
	bne x20, x11, fail

test_12:
	li TESTNUM, 12

	li x10, 0x13A6C792
	li x11, 0xAE86F905
	li x9, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x9, x21

	bne x9, x10, fail
	bne x21, x11, fail

test_13:
	li TESTNUM, 13

	li x10, 0xA7A29280
	li x11, 0x2858CE71
	li x9, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x9, x22

	bne x9, x10, fail
	bne x22, x11, fail

test_14:
	li TESTNUM, 14

	li x10, 0x4B84DDE7
	li x11, 0xD599FAC1
	li x9, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x9, x23

	bne x9, x10, fail
	bne x23, x11, fail

test_15:
	li TESTNUM, 15

	li x10, 0x0BDEA1B0
	li x11, 0xB2E65BF0
	li x18, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x18, x8

	bne x18, x10, fail
	bne x8, x11, fail

test_16:
	li TESTNUM, 16

	li x10, 0x362830D0
	li x11, 0xE490A611
	li x18, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x18, x9

	bne x18, x10, fail
	bne x9, x11, fail

test_17:
	li TESTNUM, 17

	li x10, 0xB86D38E9
	li x11, 0x8D8DE1CB
	li x18, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x18, x19

	bne x18, x10, fail
	bne x19, x11, fail

test_18:
	li TESTNUM, 18

	li x10, 0x522A5DDC
	li x11, 0xE70E6B73
	li x18, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x18, x20

	bne x18, x10, fail
	bne x20, x11, fail

test_19:
	li TESTNUM, 19

	li x10, 0x9624E38E
	li x11, 0x92D2677A
	li x18, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x18, x21

	bne x18, x10, fail
	bne x21, x11, fail

test_20:
	li TESTNUM, 20

	li x10, 0x56489323
	li x11, 0x2C7FF6BD
	li x18, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x18, x22

	bne x18, x10, fail
	bne x22, x11, fail

test_21:
	li TESTNUM, 21

	li x10, 0xC37083B9
	li x11, 0x3BB77448
	li x18, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x18, x23

	bne x18, x10, fail
	bne x23, x11, fail

test_22:
	li TESTNUM, 22

	li x10, 0xE5D43AEF
	li x11, 0xD9B7A74F
	li x19, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x19, x8

	bne x19, x10, fail
	bne x8, x11, fail

test_23:
	li TESTNUM, 23

	li x10, 0x764C17D8
	li x11, 0xE5EEA482
	li x19, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x19, x9

	bne x19, x10, fail
	bne x9, x11, fail

test_24:
	li TESTNUM, 24

	li x10, 0xB6323B23
	li x11, 0x89B1365C
	li x19, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x19, x18

	bne x19, x10, fail
	bne x18, x11, fail

test_25:
	li TESTNUM, 25

	li x10, 0x6E3A4E29
	li x11, 0x015A2CE8
	li x19, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x19, x20

	bne x19, x10, fail
	bne x20, x11, fail

test_26:
	li TESTNUM, 26

	li x10, 0x12543B0F
	li x11, 0xA529C3F9
	li x19, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x19, x21

	bne x19, x10, fail
	bne x21, x11, fail

test_27:
	li TESTNUM, 27

	li x10, 0xE348E677
	li x11, 0x94470789
	li x19, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x19, x22

	bne x19, x10, fail
	bne x22, x11, fail

test_28:
	li TESTNUM, 28

	li x10, 0x99E416BB
	li x11, 0xF9C2D1A0
	li x19, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x19, x23

	bne x19, x10, fail
	bne x23, x11, fail

test_29:
	li TESTNUM, 29

	li x10, 0x50855288
	li x11, 0xAA747D4E
	li x20, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x20, x8

	bne x20, x10, fail
	bne x8, x11, fail

test_30:
	li TESTNUM, 30

	li x10, 0xFC841C66
	li x11, 0x7D775EA3
	li x20, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x20, x9

	bne x20, x10, fail
	bne x9, x11, fail

test_31:
	li TESTNUM, 31

	li x10, 0x55890789
	li x11, 0x093C1D3D
	li x20, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x20, x18

	bne x20, x10, fail
	bne x18, x11, fail

test_32:
	li TESTNUM, 32

	li x10, 0x346DED49
	li x11, 0xF0558C14
	li x20, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x20, x19

	bne x20, x10, fail
	bne x19, x11, fail

test_33:
	li TESTNUM, 33

	li x10, 0xA507A69C
	li x11, 0x7CF2C4E8
	li x20, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x20, x21

	bne x20, x10, fail
	bne x21, x11, fail

test_34:
	li TESTNUM, 34

	li x10, 0xF29C8AC3
	li x11, 0x466A7094
	li x20, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x20, x22

	bne x20, x10, fail
	bne x22, x11, fail

test_35:
	li TESTNUM, 35

	li x10, 0xEDC2CB89
	li x11, 0x4AF24E14
	li x20, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x20, x23

	bne x20, x10, fail
	bne x23, x11, fail

test_36:
	li TESTNUM, 36

	li x10, 0x1758B9F2
	li x11, 0xF383693C
	li x21, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x21, x8

	bne x21, x10, fail
	bne x8, x11, fail

test_37:
	li TESTNUM, 37

	li x10, 0xD0B04522
	li x11, 0xA52DDE04
	li x21, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x21, x9

	bne x21, x10, fail
	bne x9, x11, fail

test_38:
	li TESTNUM, 38

	li x10, 0xB63B8B3E
	li x11, 0xAB136AC5
	li x21, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x21, x18

	bne x21, x10, fail
	bne x18, x11, fail

test_39:
	li TESTNUM, 39

	li x10, 0x5BB4895C
	li x11, 0x44B2CCC5
	li x21, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x21, x19

	bne x21, x10, fail
	bne x19, x11, fail

test_40:
	li TESTNUM, 40

	li x10, 0x18CE7764
	li x11, 0xFFDC10AD
	li x21, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x21, x20

	bne x21, x10, fail
	bne x20, x11, fail

test_41:
	li TESTNUM, 41

	li x10, 0x419769D7
	li x11, 0x2E2A26CB
	li x21, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x21, x22

	bne x21, x10, fail
	bne x22, x11, fail

test_42:
	li TESTNUM, 42

	li x10, 0x3E87AF48
	li x11, 0x4D401D5F
	li x21, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x21, x23

	bne x21, x10, fail
	bne x23, x11, fail

test_43:
	li TESTNUM, 43

	li x10, 0x54BE12B0
	li x11, 0xB55C3014
	li x22, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x22, x8

	bne x22, x10, fail
	bne x8, x11, fail

test_44:
	li TESTNUM, 44

	li x10, 0xD9525FB6
	li x11, 0x59CE8B5A
	li x22, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x22, x9

	bne x22, x10, fail
	bne x9, x11, fail

test_45:
	li TESTNUM, 45

	li x10, 0x1E02B448
	li x11, 0xAC034B02
	li x22, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x22, x18

	bne x22, x10, fail
	bne x18, x11, fail

test_46:
	li TESTNUM, 46

	li x10, 0x32B207BF
	li x11, 0xA21FC9D0
	li x22, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x22, x19

	bne x22, x10, fail
	bne x19, x11, fail

test_47:
	li TESTNUM, 47

	li x10, 0x83E36094
	li x11, 0x1E33494D
	li x22, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x22, x20

	bne x22, x10, fail
	bne x20, x11, fail

test_48:
	li TESTNUM, 48

	li x10, 0x84356CD6
	li x11, 0xA43B66EE
	li x22, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x22, x21

	bne x22, x10, fail
	bne x21, x11, fail

test_49:
	li TESTNUM, 49

	li x10, 0x2DD6D7D9
	li x11, 0xAC9472E8
	li x22, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x22, x23

	bne x22, x10, fail
	bne x23, x11, fail

test_50:
	li TESTNUM, 50

	li x10, 0x5D42E5A0
	li x11, 0x13BE4290
	li x23, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x23, x8

	bne x23, x10, fail
	bne x8, x11, fail

test_51:
	li TESTNUM, 51

	li x10, 0x123130CB
	li x11, 0xAAA89F46
	li x23, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x23, x9

	bne x23, x10, fail
	bne x9, x11, fail

test_52:
	li TESTNUM, 52

	li x10, 0x03967E0C
	li x11, 0xF6B7247D
	li x23, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x23, x18

	bne x23, x10, fail
	bne x18, x11, fail

test_53:
	li TESTNUM, 53

	li x10, 0x58D2BDED
	li x11, 0x1561792C
	li x23, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x23, x19

	bne x23, x10, fail
	bne x19, x11, fail

test_54:
	li TESTNUM, 54

	li x10, 0xC50D5EC4
	li x11, 0x2C571118
	li x23, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x23, x20

	bne x23, x10, fail
	bne x20, x11, fail

test_55:
	li TESTNUM, 55

	li x10, 0xA3E8815B
	li x11, 0x0E2A80AC
	li x23, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x23, x21

	bne x23, x10, fail
	bne x21, x11, fail

test_56:
	li TESTNUM, 56

	li x10, 0xD42271C9
	li x11, 0xBB13190A
	li x23, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x23, x22

	bne x23, x10, fail
	bne x22, x11, fail

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