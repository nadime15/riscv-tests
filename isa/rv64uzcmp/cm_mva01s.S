#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN
    
init:
    # Set initial sp
    la sp, tdat_end

test_1:
	li TESTNUM, 1

	li x8, 0x92F91318
	li x8, 0x2A65047C
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x8

	bne x8, x10, fail
	bne x8, x11, fail

test_2:
	li TESTNUM, 2

	li x8, 0x74ECE979
	li x9, 0x18D75FF4
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x9

	bne x8, x10, fail
	bne x9, x11, fail

test_3:
	li TESTNUM, 3

	li x8, 0xBEE6FA70
	li x18, 0x94C65372
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x18

	bne x8, x10, fail
	bne x18, x11, fail

test_4:
	li TESTNUM, 4

	li x8, 0xC9EA394D
	li x19, 0x04E56DC8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x19

	bne x8, x10, fail
	bne x19, x11, fail

test_5:
	li TESTNUM, 5

	li x8, 0xDA92B072
	li x20, 0x6C6338DA
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x20

	bne x8, x10, fail
	bne x20, x11, fail

test_6:
	li TESTNUM, 6

	li x8, 0x455B1925
	li x21, 0xD093CED8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x21

	bne x8, x10, fail
	bne x21, x11, fail

test_7:
	li TESTNUM, 7

	li x8, 0x8B61B9A1
	li x22, 0x5CE3595A
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x22

	bne x8, x10, fail
	bne x22, x11, fail

test_8:
	li TESTNUM, 8

	li x8, 0xFFA52E8A
	li x23, 0x5127F816
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x8, x23

	bne x8, x10, fail
	bne x23, x11, fail

test_9:
	li TESTNUM, 9

	li x9, 0xF115562B
	li x8, 0xF571AF37
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x8

	bne x9, x10, fail
	bne x8, x11, fail

test_10:
	li TESTNUM, 10

	li x9, 0xB9175442
	li x9, 0xFD8507B7
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x9

	bne x9, x10, fail
	bne x9, x11, fail

test_11:
	li TESTNUM, 11

	li x9, 0x781963CB
	li x18, 0x36B2EB00
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x18

	bne x9, x10, fail
	bne x18, x11, fail

test_12:
	li TESTNUM, 12

	li x9, 0xB02A82E9
	li x19, 0xDE9BF7E0
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x19

	bne x9, x10, fail
	bne x19, x11, fail

test_13:
	li TESTNUM, 13

	li x9, 0x7F478AE8
	li x20, 0x35BD7864
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x20

	bne x9, x10, fail
	bne x20, x11, fail

test_14:
	li TESTNUM, 14

	li x9, 0x72E792F6
	li x21, 0x4A1E425F
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x21

	bne x9, x10, fail
	bne x21, x11, fail

test_15:
	li TESTNUM, 15

	li x9, 0xA54D911E
	li x22, 0x8FB3C0E7
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x22

	bne x9, x10, fail
	bne x22, x11, fail

test_16:
	li TESTNUM, 16

	li x9, 0xBD0083B4
	li x23, 0x8A96AA3D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x9, x23

	bne x9, x10, fail
	bne x23, x11, fail

test_17:
	li TESTNUM, 17

	li x18, 0x1E600804
	li x8, 0xCAE009A2
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x8

	bne x18, x10, fail
	bne x8, x11, fail

test_18:
	li TESTNUM, 18

	li x18, 0x49E6673A
	li x9, 0xB6E1585B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x9

	bne x18, x10, fail
	bne x9, x11, fail

test_19:
	li TESTNUM, 19

	li x18, 0x6D96CB0E
	li x18, 0x3E1DA27A
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x18

	bne x18, x10, fail
	bne x18, x11, fail

test_20:
	li TESTNUM, 20

	li x18, 0xB1790A0B
	li x19, 0x0AAD147D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x19

	bne x18, x10, fail
	bne x19, x11, fail

test_21:
	li TESTNUM, 21

	li x18, 0xF673534E
	li x20, 0x2050476C
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x20

	bne x18, x10, fail
	bne x20, x11, fail

test_22:
	li TESTNUM, 22

	li x18, 0xCEC79064
	li x21, 0x451424F0
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x21

	bne x18, x10, fail
	bne x21, x11, fail

test_23:
	li TESTNUM, 23

	li x18, 0x17C0520E
	li x22, 0xED0EF15D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x22

	bne x18, x10, fail
	bne x22, x11, fail

test_24:
	li TESTNUM, 24

	li x18, 0x4CCF5E71
	li x23, 0x1D9D54E4
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x18, x23

	bne x18, x10, fail
	bne x23, x11, fail

test_25:
	li TESTNUM, 25

	li x19, 0x7425D830
	li x8, 0x277B6AF6
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x8

	bne x19, x10, fail
	bne x8, x11, fail

test_26:
	li TESTNUM, 26

	li x19, 0x7AF2262A
	li x9, 0x4E06D1F0
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x9

	bne x19, x10, fail
	bne x9, x11, fail

test_27:
	li TESTNUM, 27

	li x19, 0x07113317
	li x18, 0xC186B862
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x18

	bne x19, x10, fail
	bne x18, x11, fail

test_28:
	li TESTNUM, 28

	li x19, 0x55BBE7AF
	li x19, 0xBDD32674
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x19

	bne x19, x10, fail
	bne x19, x11, fail

test_29:
	li TESTNUM, 29

	li x19, 0xCE6075AA
	li x20, 0x8B590897
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x20

	bne x19, x10, fail
	bne x20, x11, fail

test_30:
	li TESTNUM, 30

	li x19, 0x803F269D
	li x21, 0xFE1685D9
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x21

	bne x19, x10, fail
	bne x21, x11, fail

test_31:
	li TESTNUM, 31

	li x19, 0x813259BC
	li x22, 0x7FF7EFAE
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x22

	bne x19, x10, fail
	bne x22, x11, fail

test_32:
	li TESTNUM, 32

	li x19, 0xFD0B28B8
	li x23, 0x7CDB5FF3
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x19, x23

	bne x19, x10, fail
	bne x23, x11, fail

test_33:
	li TESTNUM, 33

	li x20, 0x5A689C04
	li x8, 0x7CE082CB
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x8

	bne x20, x10, fail
	bne x8, x11, fail

test_34:
	li TESTNUM, 34

	li x20, 0x2443F291
	li x9, 0xE267BFB9
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x9

	bne x20, x10, fail
	bne x9, x11, fail

test_35:
	li TESTNUM, 35

	li x20, 0x73ADCA05
	li x18, 0xAB4BA7DD
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x18

	bne x20, x10, fail
	bne x18, x11, fail

test_36:
	li TESTNUM, 36

	li x20, 0xBF259EA2
	li x19, 0x59EA36DE
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x19

	bne x20, x10, fail
	bne x19, x11, fail

test_37:
	li TESTNUM, 37

	li x20, 0x922D79D2
	li x20, 0xCC087E6B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x20

	bne x20, x10, fail
	bne x20, x11, fail

test_38:
	li TESTNUM, 38

	li x20, 0x1D9CA81F
	li x21, 0xFA7743FC
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x21

	bne x20, x10, fail
	bne x21, x11, fail

test_39:
	li TESTNUM, 39

	li x20, 0x80E21209
	li x22, 0x675B87F6
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x22

	bne x20, x10, fail
	bne x22, x11, fail

test_40:
	li TESTNUM, 40

	li x20, 0x64F9106B
	li x23, 0xC3155A9E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x20, x23

	bne x20, x10, fail
	bne x23, x11, fail

test_41:
	li TESTNUM, 41

	li x21, 0x3103635F
	li x8, 0xB49B956C
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x8

	bne x21, x10, fail
	bne x8, x11, fail

test_42:
	li TESTNUM, 42

	li x21, 0x6385AFAD
	li x9, 0x64440E42
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x9

	bne x21, x10, fail
	bne x9, x11, fail

test_43:
	li TESTNUM, 43

	li x21, 0x3AB9B285
	li x18, 0x638F6232
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x18

	bne x21, x10, fail
	bne x18, x11, fail

test_44:
	li TESTNUM, 44

	li x21, 0xDCBE7098
	li x19, 0x2B47A5C4
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x19

	bne x21, x10, fail
	bne x19, x11, fail

test_45:
	li TESTNUM, 45

	li x21, 0x7A0F937E
	li x20, 0xE1E942FD
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x20

	bne x21, x10, fail
	bne x20, x11, fail

test_46:
	li TESTNUM, 46

	li x21, 0x8D834623
	li x21, 0x25578393
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x21

	bne x21, x10, fail
	bne x21, x11, fail

test_47:
	li TESTNUM, 47

	li x21, 0xE054BA3B
	li x22, 0xCF0A2749
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x22

	bne x21, x10, fail
	bne x22, x11, fail

test_48:
	li TESTNUM, 48

	li x21, 0x18D76E2E
	li x23, 0xBC3BE32E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x21, x23

	bne x21, x10, fail
	bne x23, x11, fail

test_49:
	li TESTNUM, 49

	li x22, 0x6D789130
	li x8, 0x3C032076
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x8

	bne x22, x10, fail
	bne x8, x11, fail

test_50:
	li TESTNUM, 50

	li x22, 0x6CAF45D3
	li x9, 0x2EF9912B
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x9

	bne x22, x10, fail
	bne x9, x11, fail

test_51:
	li TESTNUM, 51

	li x22, 0xFF792771
	li x18, 0x9EEF75CD
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x18

	bne x22, x10, fail
	bne x18, x11, fail

test_52:
	li TESTNUM, 52

	li x22, 0x5FD327E3
	li x19, 0x049AE414
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x19

	bne x22, x10, fail
	bne x19, x11, fail

test_53:
	li TESTNUM, 53

	li x22, 0x1985A911
	li x20, 0x6BCCB9C2
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x20

	bne x22, x10, fail
	bne x20, x11, fail

test_54:
	li TESTNUM, 54

	li x22, 0x54907352
	li x21, 0x1911EBCA
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x21

	bne x22, x10, fail
	bne x21, x11, fail

test_55:
	li TESTNUM, 55

	li x22, 0x40D03337
	li x22, 0x215DEED8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x22

	bne x22, x10, fail
	bne x22, x11, fail

test_56:
	li TESTNUM, 56

	li x22, 0x699A60D2
	li x23, 0xAE043359
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x22, x23

	bne x22, x10, fail
	bne x23, x11, fail

test_57:
	li TESTNUM, 57

	li x23, 0x46EB552B
	li x8, 0x44A65BF8
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x8

	bne x23, x10, fail
	bne x8, x11, fail

test_58:
	li TESTNUM, 58

	li x23, 0x0C800BE4
	li x9, 0xB77437F3
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x9

	bne x23, x10, fail
	bne x9, x11, fail

test_59:
	li TESTNUM, 59

	li x23, 0x0F17DA71
	li x18, 0xE94E62B1
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x18

	bne x23, x10, fail
	bne x18, x11, fail

test_60:
	li TESTNUM, 60

	li x23, 0xFAA6819C
	li x19, 0xC9B460EF
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x19

	bne x23, x10, fail
	bne x19, x11, fail

test_61:
	li TESTNUM, 61

	li x23, 0x4D1A16F9
	li x20, 0x5479748E
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x20

	bne x23, x10, fail
	bne x20, x11, fail

test_62:
	li TESTNUM, 62

	li x23, 0x23E5D638
	li x21, 0xC0E0DD37
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x21

	bne x23, x10, fail
	bne x21, x11, fail

test_63:
	li TESTNUM, 63

	li x23, 0x4C82742B
	li x22, 0x5EA6D39D
	li x10, 0x00000000
	li x11, 0x00000000

	cm.mva01s x23, x22

	bne x23, x10, fail
	bne x22, x11, fail

test_64:
	li TESTNUM, 64

	li x23, 0xC854AAC2
	li x23, 0xEEB8E868
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