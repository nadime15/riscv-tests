#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

init:
    # Set initial sp
    la sp, tdat_end

test_1:
	li TESTNUM, 1

	li x10, 0xC57E2EEF
	li x11, 0xDC63C0D8
	li x8, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x8, x9

	bne x8, x10, fail
	bne x9, x11, fail

test_2:
	li TESTNUM, 2

	li x10, 0xA1C1B6A8
	li x11, 0x1A21B728
	li x8, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x8, x18

	bne x8, x10, fail
	bne x18, x11, fail

test_3:
	li TESTNUM, 3

	li x10, 0xB55F06BC
	li x11, 0xF5741136
	li x8, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x8, x19

	bne x8, x10, fail
	bne x19, x11, fail

test_4:
	li TESTNUM, 4

	li x10, 0x503A99E0
	li x11, 0x891662AD
	li x8, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x8, x20

	bne x8, x10, fail
	bne x20, x11, fail

test_5:
	li TESTNUM, 5

	li x10, 0x91183E25
	li x11, 0x49FB504A
	li x8, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x8, x21

	bne x8, x10, fail
	bne x21, x11, fail

test_6:
	li TESTNUM, 6

	li x10, 0xD931614F
	li x11, 0xE6909DDB
	li x8, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x8, x22

	bne x8, x10, fail
	bne x22, x11, fail

test_7:
	li TESTNUM, 7

	li x10, 0x24AA1673
	li x11, 0x0BC4096A
	li x8, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x8, x23

	bne x8, x10, fail
	bne x23, x11, fail

test_8:
	li TESTNUM, 8

	li x10, 0x2EB83DBF
	li x11, 0xEA179BC1
	li x9, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x9, x8

	bne x9, x10, fail
	bne x8, x11, fail

test_9:
	li TESTNUM, 9

	li x10, 0x00DFA72A
	li x11, 0x0E912CD5
	li x9, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x9, x18

	bne x9, x10, fail
	bne x18, x11, fail

test_10:
	li TESTNUM, 10

	li x10, 0xB0D48209
	li x11, 0xA2474C75
	li x9, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x9, x19

	bne x9, x10, fail
	bne x19, x11, fail

test_11:
	li TESTNUM, 11

	li x10, 0x0579A0D1
	li x11, 0xD9144DC7
	li x9, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x9, x20

	bne x9, x10, fail
	bne x20, x11, fail

test_12:
	li TESTNUM, 12

	li x10, 0x317A33F1
	li x11, 0x6A182559
	li x9, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x9, x21

	bne x9, x10, fail
	bne x21, x11, fail

test_13:
	li TESTNUM, 13

	li x10, 0x689B5359
	li x11, 0x8C1A5A2C
	li x9, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x9, x22

	bne x9, x10, fail
	bne x22, x11, fail

test_14:
	li TESTNUM, 14

	li x10, 0xE5DC3E54
	li x11, 0x05C33F4E
	li x9, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x9, x23

	bne x9, x10, fail
	bne x23, x11, fail

test_15:
	li TESTNUM, 15

	li x10, 0x1155EEE9
	li x11, 0x5CE6E43F
	li x18, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x18, x8

	bne x18, x10, fail
	bne x8, x11, fail

test_16:
	li TESTNUM, 16

	li x10, 0x354AD75E
	li x11, 0xA6C1F390
	li x18, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x18, x9

	bne x18, x10, fail
	bne x9, x11, fail

test_17:
	li TESTNUM, 17

	li x10, 0x84B3D047
	li x11, 0x328404D1
	li x18, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x18, x19

	bne x18, x10, fail
	bne x19, x11, fail

test_18:
	li TESTNUM, 18

	li x10, 0x62493F23
	li x11, 0xFB25DF1B
	li x18, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x18, x20

	bne x18, x10, fail
	bne x20, x11, fail

test_19:
	li TESTNUM, 19

	li x10, 0xEEFA4C24
	li x11, 0x8F9AF5E6
	li x18, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x18, x21

	bne x18, x10, fail
	bne x21, x11, fail

test_20:
	li TESTNUM, 20

	li x10, 0x72319479
	li x11, 0x33A6C100
	li x18, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x18, x22

	bne x18, x10, fail
	bne x22, x11, fail

test_21:
	li TESTNUM, 21

	li x10, 0xCEA163CA
	li x11, 0x037B0CB0
	li x18, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x18, x23

	bne x18, x10, fail
	bne x23, x11, fail

test_22:
	li TESTNUM, 22

	li x10, 0xFE94411B
	li x11, 0xBB565F45
	li x19, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x19, x8

	bne x19, x10, fail
	bne x8, x11, fail

test_23:
	li TESTNUM, 23

	li x10, 0x552B45A4
	li x11, 0x06646510
	li x19, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x19, x9

	bne x19, x10, fail
	bne x9, x11, fail

test_24:
	li TESTNUM, 24

	li x10, 0x8296561B
	li x11, 0x3B99B57D
	li x19, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x19, x18

	bne x19, x10, fail
	bne x18, x11, fail

test_25:
	li TESTNUM, 25

	li x10, 0xEB1A1932
	li x11, 0xB3FF63B9
	li x19, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x19, x20

	bne x19, x10, fail
	bne x20, x11, fail

test_26:
	li TESTNUM, 26

	li x10, 0x5B70855A
	li x11, 0x2B266A14
	li x19, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x19, x21

	bne x19, x10, fail
	bne x21, x11, fail

test_27:
	li TESTNUM, 27

	li x10, 0x92A0F532
	li x11, 0x6ACD8F31
	li x19, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x19, x22

	bne x19, x10, fail
	bne x22, x11, fail

test_28:
	li TESTNUM, 28

	li x10, 0x6B2771EE
	li x11, 0x777A96CB
	li x19, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x19, x23

	bne x19, x10, fail
	bne x23, x11, fail

test_29:
	li TESTNUM, 29

	li x10, 0x21419DF7
	li x11, 0x13D9EB41
	li x20, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x20, x8

	bne x20, x10, fail
	bne x8, x11, fail

test_30:
	li TESTNUM, 30

	li x10, 0xA9C171ED
	li x11, 0xDF0D506D
	li x20, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x20, x9

	bne x20, x10, fail
	bne x9, x11, fail

test_31:
	li TESTNUM, 31

	li x10, 0xF9478852
	li x11, 0xBD317116
	li x20, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x20, x18

	bne x20, x10, fail
	bne x18, x11, fail

test_32:
	li TESTNUM, 32

	li x10, 0xA491A061
	li x11, 0xAF8815CE
	li x20, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x20, x19

	bne x20, x10, fail
	bne x19, x11, fail

test_33:
	li TESTNUM, 33

	li x10, 0x839F66BB
	li x11, 0x19291A7B
	li x20, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x20, x21

	bne x20, x10, fail
	bne x21, x11, fail

test_34:
	li TESTNUM, 34

	li x10, 0xA44025CA
	li x11, 0x5CEA7B44
	li x20, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x20, x22

	bne x20, x10, fail
	bne x22, x11, fail

test_35:
	li TESTNUM, 35

	li x10, 0x721845D9
	li x11, 0xD640A611
	li x20, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x20, x23

	bne x20, x10, fail
	bne x23, x11, fail

test_36:
	li TESTNUM, 36

	li x10, 0xBD09807B
	li x11, 0x5F0F6E66
	li x21, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x21, x8

	bne x21, x10, fail
	bne x8, x11, fail

test_37:
	li TESTNUM, 37

	li x10, 0x967C04DB
	li x11, 0x6555B53E
	li x21, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x21, x9

	bne x21, x10, fail
	bne x9, x11, fail

test_38:
	li TESTNUM, 38

	li x10, 0x1C7F596E
	li x11, 0x904755A0
	li x21, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x21, x18

	bne x21, x10, fail
	bne x18, x11, fail

test_39:
	li TESTNUM, 39

	li x10, 0x8317DF94
	li x11, 0x510C7CA3
	li x21, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x21, x19

	bne x21, x10, fail
	bne x19, x11, fail

test_40:
	li TESTNUM, 40

	li x10, 0x39971B93
	li x11, 0xD8F019FB
	li x21, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x21, x20

	bne x21, x10, fail
	bne x20, x11, fail

test_41:
	li TESTNUM, 41

	li x10, 0x5C371732
	li x11, 0xD8D6396B
	li x21, 0x00000000
	li x22, 0x00000000

	cm.mvsa01 x21, x22

	bne x21, x10, fail
	bne x22, x11, fail

test_42:
	li TESTNUM, 42

	li x10, 0x89E94D23
	li x11, 0xBB096F30
	li x21, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x21, x23

	bne x21, x10, fail
	bne x23, x11, fail

test_43:
	li TESTNUM, 43

	li x10, 0xA4CEF300
	li x11, 0xD412BF00
	li x22, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x22, x8

	bne x22, x10, fail
	bne x8, x11, fail

test_44:
	li TESTNUM, 44

	li x10, 0xAEFE6019
	li x11, 0xE24D2F46
	li x22, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x22, x9

	bne x22, x10, fail
	bne x9, x11, fail

test_45:
	li TESTNUM, 45

	li x10, 0x949BDFC4
	li x11, 0xE26839D7
	li x22, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x22, x18

	bne x22, x10, fail
	bne x18, x11, fail

test_46:
	li TESTNUM, 46

	li x10, 0x07AB71ED
	li x11, 0xD99D25A5
	li x22, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x22, x19

	bne x22, x10, fail
	bne x19, x11, fail

test_47:
	li TESTNUM, 47

	li x10, 0x4A9B7904
	li x11, 0x0A6212F7
	li x22, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x22, x20

	bne x22, x10, fail
	bne x20, x11, fail

test_48:
	li TESTNUM, 48

	li x10, 0xD4488946
	li x11, 0x9FD1C277
	li x22, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x22, x21

	bne x22, x10, fail
	bne x21, x11, fail

test_49:
	li TESTNUM, 49

	li x10, 0x2B326A4B
	li x11, 0xEC71961A
	li x22, 0x00000000
	li x23, 0x00000000

	cm.mvsa01 x22, x23

	bne x22, x10, fail
	bne x23, x11, fail

test_50:
	li TESTNUM, 50

	li x10, 0xD7EF2380
	li x11, 0x0F7CF223
	li x23, 0x00000000
	li x8, 0x00000000

	cm.mvsa01 x23, x8

	bne x23, x10, fail
	bne x8, x11, fail

test_51:
	li TESTNUM, 51

	li x10, 0x730CEFB2
	li x11, 0xB2BA0F29
	li x23, 0x00000000
	li x9, 0x00000000

	cm.mvsa01 x23, x9

	bne x23, x10, fail
	bne x9, x11, fail

test_52:
	li TESTNUM, 52

	li x10, 0xBEEDC9D5
	li x11, 0xB8EEEE53
	li x23, 0x00000000
	li x18, 0x00000000

	cm.mvsa01 x23, x18

	bne x23, x10, fail
	bne x18, x11, fail

test_53:
	li TESTNUM, 53

	li x10, 0xEC65729F
	li x11, 0x505B0604
	li x23, 0x00000000
	li x19, 0x00000000

	cm.mvsa01 x23, x19

	bne x23, x10, fail
	bne x19, x11, fail

test_54:
	li TESTNUM, 54

	li x10, 0xDCF514CB
	li x11, 0xF1911ECE
	li x23, 0x00000000
	li x20, 0x00000000

	cm.mvsa01 x23, x20

	bne x23, x10, fail
	bne x20, x11, fail

test_55:
	li TESTNUM, 55

	li x10, 0x3650D434
	li x11, 0xF95C77EE
	li x23, 0x00000000
	li x21, 0x00000000

	cm.mvsa01 x23, x21

	bne x23, x10, fail
	bne x21, x11, fail

test_56:
	li TESTNUM, 56

	li x10, 0x6BEDE232
	li x11, 0x989B5B1E
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