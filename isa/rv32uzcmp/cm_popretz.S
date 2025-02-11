
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
	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_2

	jal ra, test_2

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_3

	jal ra, test_3

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_4

	jal ra, test_4

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_5

	jal ra, test_5

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0x37D3511D
	bne x8, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_6

	jal ra, test_6

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x0D711CAD
	bne x8, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_7

	jal ra, test_7

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xE2614DF0
	bne x8, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_8

	jal ra, test_8

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xB8EC7913
	bne x8, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_9

	jal ra, test_9

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0x6A2AFE99
	bne x8, x7, fail

	li x7, 0x8C6843DD
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_10

	jal ra, test_10

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x37735933
	bne x8, x7, fail

	li x7, 0xD8DC6C85
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_11

	jal ra, test_11

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x9CA3004F
	bne x8, x7, fail

	li x7, 0xC0E471ED
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_12

	jal ra, test_12

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xC858E2C9
	bne x8, x7, fail

	li x7, 0xEB009C39
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_13

	jal ra, test_13

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 16
	bne x29, sp, fail
	li x7, 0x4D593FC3
	bne x8, x7, fail

	li x7, 0x13AAE3AB
	bne x9, x7, fail

	li x7, 0x45699466
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_14

	jal ra, test_14

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xE98F9EF6
	bne x8, x7, fail

	li x7, 0xEFCAF415
	bne x9, x7, fail

	li x7, 0x7BF26460
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_15

	jal ra, test_15

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x4410CA07
	bne x8, x7, fail

	li x7, 0x93E3ABAC
	bne x9, x7, fail

	li x7, 0xE8E3D412
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_16

	jal ra, test_16

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x022E149C
	bne x8, x7, fail

	li x7, 0x0FC355A4
	bne x9, x7, fail

	li x7, 0xB118E104
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_17

	jal ra, test_17

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x8868D9F6
	bne x8, x7, fail

	li x7, 0x2B95C3A4
	bne x9, x7, fail

	li x7, 0x6D1321AD
	bne x18, x7, fail

	li x7, 0xC4B0B73E
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_18

	jal ra, test_18

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xDADCD76E
	bne x8, x7, fail

	li x7, 0xCFA5695A
	bne x9, x7, fail

	li x7, 0x4983A279
	bne x18, x7, fail

	li x7, 0xC57E46DC
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_19

	jal ra, test_19

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x130E29F6
	bne x8, x7, fail

	li x7, 0x666BF798
	bne x9, x7, fail

	li x7, 0xF5360550
	bne x18, x7, fail

	li x7, 0x99ECB73D
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_20

	jal ra, test_20

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xAA22945B
	bne x8, x7, fail

	li x7, 0x050C3F3A
	bne x9, x7, fail

	li x7, 0xD479D1F3
	bne x18, x7, fail

	li x7, 0x537F5A0B
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_21

	jal ra, test_21

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xBCB9DC6F
	bne x8, x7, fail

	li x7, 0xCF5496C3
	bne x9, x7, fail

	li x7, 0xFABB61AC
	bne x18, x7, fail

	li x7, 0x3AEF21F9
	bne x19, x7, fail

	li x7, 0xC18B2E1F
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_22

	jal ra, test_22

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xD9E8334C
	bne x8, x7, fail

	li x7, 0xCBC1FB27
	bne x9, x7, fail

	li x7, 0x8D687C67
	bne x18, x7, fail

	li x7, 0x19D1B170
	bne x19, x7, fail

	li x7, 0x5DBC8564
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_23

	jal ra, test_23

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x6F162E63
	bne x8, x7, fail

	li x7, 0x0FC4F087
	bne x9, x7, fail

	li x7, 0x389C00AB
	bne x18, x7, fail

	li x7, 0xEF552205
	bne x19, x7, fail

	li x7, 0xD18D4773
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_24

	jal ra, test_24

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x8BB8B39D
	bne x8, x7, fail

	li x7, 0x8BC09D5C
	bne x9, x7, fail

	li x7, 0xC0B28217
	bne x18, x7, fail

	li x7, 0x4B605BE1
	bne x19, x7, fail

	li x7, 0x2414E4D2
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_25

	jal ra, test_25

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x674C039A
	bne x8, x7, fail

	li x7, 0x33CF1ECC
	bne x9, x7, fail

	li x7, 0xB60011DD
	bne x18, x7, fail

	li x7, 0x82A5B81F
	bne x19, x7, fail

	li x7, 0x185C579F
	bne x20, x7, fail

	li x7, 0x27E52C9B
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_26

	jal ra, test_26

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xA4B65AAF
	bne x8, x7, fail

	li x7, 0x10B8CD19
	bne x9, x7, fail

	li x7, 0xC5AACBB8
	bne x18, x7, fail

	li x7, 0xCA1C560F
	bne x19, x7, fail

	li x7, 0xFC8D6415
	bne x20, x7, fail

	li x7, 0xBE6DB902
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_27

	jal ra, test_27

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xA639ED49
	bne x8, x7, fail

	li x7, 0x1748CDDB
	bne x9, x7, fail

	li x7, 0xE81947FE
	bne x18, x7, fail

	li x7, 0x499A48E8
	bne x19, x7, fail

	li x7, 0x873B0892
	bne x20, x7, fail

	li x7, 0x62245880
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_28

	jal ra, test_28

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x3719E0F7
	bne x8, x7, fail

	li x7, 0x4EF0FC23
	bne x9, x7, fail

	li x7, 0xD91A9765
	bne x18, x7, fail

	li x7, 0x2D6C829C
	bne x19, x7, fail

	li x7, 0x00419B76
	bne x20, x7, fail

	li x7, 0x98CBBEFB
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_29

	jal ra, test_29

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xECDAF977
	bne x8, x7, fail

	li x7, 0xDF315CDF
	bne x9, x7, fail

	li x7, 0x15F4D3B5
	bne x18, x7, fail

	li x7, 0xCA75D2C2
	bne x19, x7, fail

	li x7, 0x4F81BF39
	bne x20, x7, fail

	li x7, 0x2267D4F0
	bne x21, x7, fail

	li x7, 0x15D0B056
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_30

	jal ra, test_30

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xC436414E
	bne x8, x7, fail

	li x7, 0x6E4CB3DB
	bne x9, x7, fail

	li x7, 0x9D1DB16C
	bne x18, x7, fail

	li x7, 0x93766C02
	bne x19, x7, fail

	li x7, 0xAF7CEBFA
	bne x20, x7, fail

	li x7, 0xFF619700
	bne x21, x7, fail

	li x7, 0x287B0F11
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_31

	jal ra, test_31

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xFA84DEBE
	bne x8, x7, fail

	li x7, 0x18FD1555
	bne x9, x7, fail

	li x7, 0x54D8476B
	bne x18, x7, fail

	li x7, 0x9B933E38
	bne x19, x7, fail

	li x7, 0xE2654839
	bne x20, x7, fail

	li x7, 0x228BF701
	bne x21, x7, fail

	li x7, 0xDA409A15
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_32

	jal ra, test_32

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xB65475D8
	bne x8, x7, fail

	li x7, 0xF9A10986
	bne x9, x7, fail

	li x7, 0x628E128C
	bne x18, x7, fail

	li x7, 0x25487E79
	bne x19, x7, fail

	li x7, 0x1F6ABCFD
	bne x20, x7, fail

	li x7, 0x5FC9CC37
	bne x21, x7, fail

	li x7, 0x629AA282
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_33

	jal ra, test_33

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xF4A7ABCB
	bne x8, x7, fail

	li x7, 0xF26C753C
	bne x9, x7, fail

	li x7, 0xF2444ECF
	bne x18, x7, fail

	li x7, 0x88518265
	bne x19, x7, fail

	li x7, 0x1CFCD5DA
	bne x20, x7, fail

	li x7, 0x8C5E6F5E
	bne x21, x7, fail

	li x7, 0xD474F594
	bne x22, x7, fail

	li x7, 0xDDA96B15
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_34

	jal ra, test_34

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xFB523595
	bne x8, x7, fail

	li x7, 0x81DC1571
	bne x9, x7, fail

	li x7, 0xB668843B
	bne x18, x7, fail

	li x7, 0x3D68DB63
	bne x19, x7, fail

	li x7, 0x2D64389A
	bne x20, x7, fail

	li x7, 0x22F24070
	bne x21, x7, fail

	li x7, 0x60342A86
	bne x22, x7, fail

	li x7, 0xF4ABC975
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_35

	jal ra, test_35

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x11369696
	bne x8, x7, fail

	li x7, 0x387D42C8
	bne x9, x7, fail

	li x7, 0xF4DCDF4F
	bne x18, x7, fail

	li x7, 0x23AF25B3
	bne x19, x7, fail

	li x7, 0x15B5AF0B
	bne x20, x7, fail

	li x7, 0xCF7BCD71
	bne x21, x7, fail

	li x7, 0x19F64994
	bne x22, x7, fail

	li x7, 0x7F419BB1
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_36

	jal ra, test_36

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x98957E1B
	bne x8, x7, fail

	li x7, 0x33B4C86C
	bne x9, x7, fail

	li x7, 0x02DD000B
	bne x18, x7, fail

	li x7, 0xCE1ED260
	bne x19, x7, fail

	li x7, 0x5E51D7FC
	bne x20, x7, fail

	li x7, 0x18245BA3
	bne x21, x7, fail

	li x7, 0xD200CB1D
	bne x22, x7, fail

	li x7, 0x164BD06B
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_37

	jal ra, test_37

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xAA5DD009
	bne x8, x7, fail

	li x7, 0x5C2BA33D
	bne x9, x7, fail

	li x7, 0x202425E8
	bne x18, x7, fail

	li x7, 0xAA85E727
	bne x19, x7, fail

	li x7, 0x788D7A90
	bne x20, x7, fail

	li x7, 0x03A6A4C1
	bne x21, x7, fail

	li x7, 0xCF7E5D09
	bne x22, x7, fail

	li x7, 0xE9E8D330
	bne x23, x7, fail

	li x7, 0x63DE2DD4
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_38

	jal ra, test_38

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x49CA5280
	bne x8, x7, fail

	li x7, 0x71945974
	bne x9, x7, fail

	li x7, 0x735182E8
	bne x18, x7, fail

	li x7, 0x019A20E6
	bne x19, x7, fail

	li x7, 0xA70AC5AE
	bne x20, x7, fail

	li x7, 0xE7A21799
	bne x21, x7, fail

	li x7, 0x6057B30D
	bne x22, x7, fail

	li x7, 0x4395C785
	bne x23, x7, fail

	li x7, 0x5D6F30F1
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_39

	jal ra, test_39

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x065CEE51
	bne x8, x7, fail

	li x7, 0x9EBB94D8
	bne x9, x7, fail

	li x7, 0x6E8CB08D
	bne x18, x7, fail

	li x7, 0xD37E00DA
	bne x19, x7, fail

	li x7, 0x2D07FBC1
	bne x20, x7, fail

	li x7, 0x7E46F4A7
	bne x21, x7, fail

	li x7, 0x11454D23
	bne x22, x7, fail

	li x7, 0x1682888B
	bne x23, x7, fail

	li x7, 0xEABF093C
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_40

	jal ra, test_40

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x3A095A1D
	bne x8, x7, fail

	li x7, 0xD2E1864D
	bne x9, x7, fail

	li x7, 0xC889AABE
	bne x18, x7, fail

	li x7, 0x11AAF540
	bne x19, x7, fail

	li x7, 0x8A3D2836
	bne x20, x7, fail

	li x7, 0x2A7BABB2
	bne x21, x7, fail

	li x7, 0xC9DA03D2
	bne x22, x7, fail

	li x7, 0x35E54534
	bne x23, x7, fail

	li x7, 0x616B40A4
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_41

	jal ra, test_41

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x4BA081CB
	bne x8, x7, fail

	li x7, 0x27275413
	bne x9, x7, fail

	li x7, 0xFBDCE728
	bne x18, x7, fail

	li x7, 0x18CEE238
	bne x19, x7, fail

	li x7, 0x4CFBA5B9
	bne x20, x7, fail

	li x7, 0xA9B6CE35
	bne x21, x7, fail

	li x7, 0x05392631
	bne x22, x7, fail

	li x7, 0x6FA76986
	bne x23, x7, fail

	li x7, 0x164A7DE9
	bne x24, x7, fail

	li x7, 0x01F59403
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_42

	jal ra, test_42

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xC04360DD
	bne x8, x7, fail

	li x7, 0xC67EA6BD
	bne x9, x7, fail

	li x7, 0xCD77EB7F
	bne x18, x7, fail

	li x7, 0x3B75D045
	bne x19, x7, fail

	li x7, 0xFCB95F7E
	bne x20, x7, fail

	li x7, 0x24227482
	bne x21, x7, fail

	li x7, 0x1C957285
	bne x22, x7, fail

	li x7, 0xEE54BD44
	bne x23, x7, fail

	li x7, 0xCBFB4EDE
	bne x24, x7, fail

	li x7, 0x26FC9DB8
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_43

	jal ra, test_43

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x9562E091
	bne x8, x7, fail

	li x7, 0x3EE6C8C5
	bne x9, x7, fail

	li x7, 0x6E305B98
	bne x18, x7, fail

	li x7, 0x1911E4A8
	bne x19, x7, fail

	li x7, 0x9F9D5D08
	bne x20, x7, fail

	li x7, 0x34E2DD6C
	bne x21, x7, fail

	li x7, 0x3C37F7B5
	bne x22, x7, fail

	li x7, 0x858AD3F8
	bne x23, x7, fail

	li x7, 0x7805CE48
	bne x24, x7, fail

	li x7, 0xBE102479
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_44

	jal ra, test_44

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x7371AF0E
	bne x8, x7, fail

	li x7, 0x96F09C7F
	bne x9, x7, fail

	li x7, 0xC3BC0D03
	bne x18, x7, fail

	li x7, 0xC64CB7B3
	bne x19, x7, fail

	li x7, 0x7F0E783F
	bne x20, x7, fail

	li x7, 0xCB4DC8B8
	bne x21, x7, fail

	li x7, 0x3DDBF476
	bne x22, x7, fail

	li x7, 0x5AA5C207
	bne x23, x7, fail

	li x7, 0x11BC02BD
	bne x24, x7, fail

	li x7, 0x47A5BD70
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_45

	jal ra, test_45

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xF1259BDB
	bne x8, x7, fail

	li x7, 0x69C19056
	bne x9, x7, fail

	li x7, 0x6C285C14
	bne x18, x7, fail

	li x7, 0xB79082C1
	bne x19, x7, fail

	li x7, 0x6B13EF1B
	bne x20, x7, fail

	li x7, 0x99462E9F
	bne x21, x7, fail

	li x7, 0x09AEADF2
	bne x22, x7, fail

	li x7, 0xCEB78539
	bne x23, x7, fail

	li x7, 0x86774450
	bne x24, x7, fail

	li x7, 0x78E508A0
	bne x25, x7, fail

	li x7, 0x1FDC1F3C
	bne x26, x7, fail

	li x7, 0xD81785F6
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_46

	jal ra, test_46

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x0FBC225A
	bne x8, x7, fail

	li x7, 0xC5716441
	bne x9, x7, fail

	li x7, 0x706DA80C
	bne x18, x7, fail

	li x7, 0x16C0F72C
	bne x19, x7, fail

	li x7, 0xBF3F41B4
	bne x20, x7, fail

	li x7, 0x0AFD8077
	bne x21, x7, fail

	li x7, 0xFD06B76B
	bne x22, x7, fail

	li x7, 0xE97E8F50
	bne x23, x7, fail

	li x7, 0x5619ED22
	bne x24, x7, fail

	li x7, 0x35F41D4E
	bne x25, x7, fail

	li x7, 0x806D97DD
	bne x26, x7, fail

	li x7, 0x1B758B92
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_47

	jal ra, test_47

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x94D0922B
	bne x8, x7, fail

	li x7, 0x84E07F35
	bne x9, x7, fail

	li x7, 0x822664F8
	bne x18, x7, fail

	li x7, 0xD0A9B260
	bne x19, x7, fail

	li x7, 0xA5A52187
	bne x20, x7, fail

	li x7, 0x379EEEA7
	bne x21, x7, fail

	li x7, 0xC86402AC
	bne x22, x7, fail

	li x7, 0x86FDF90E
	bne x23, x7, fail

	li x7, 0xAE293925
	bne x24, x7, fail

	li x7, 0x1AD87556
	bne x25, x7, fail

	li x7, 0xCFF6FB4C
	bne x26, x7, fail

	li x7, 0x8088EE17
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_48

	jal ra, test_48

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x566E6F6A
	bne x8, x7, fail

	li x7, 0x140084F6
	bne x9, x7, fail

	li x7, 0xEE82DAAF
	bne x18, x7, fail

	li x7, 0xCA9820CA
	bne x19, x7, fail

	li x7, 0xABC0DB72
	bne x20, x7, fail

	li x7, 0x1F6CAB6D
	bne x21, x7, fail

	li x7, 0x1F5CEAA8
	bne x22, x7, fail

	li x7, 0x0E2FE6FB
	bne x23, x7, fail

	li x7, 0xB98A68A4
	bne x24, x7, fail

	li x7, 0x551151C1
	bne x25, x7, fail

	li x7, 0xC38F73CE
	bne x26, x7, fail

	li x7, 0x307FFD1E
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	RVTEST_PASS

test_1:
	li TESTNUM, 1

	# Set registers

	# Set a0 to a random value
	li x10, 0x7680EDBE

	cm.push {ra}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popretz {ra}, 16

test_2:
	li TESTNUM, 2

	# Set registers

	# Set a0 to a random value
	li x10, 0x59A27681

	cm.push {ra}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popretz {ra}, 32

test_3:
	li TESTNUM, 3

	# Set registers

	# Set a0 to a random value
	li x10, 0x425EC6F8

	cm.push {ra}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popretz {ra}, 48

test_4:
	li TESTNUM, 4

	# Set registers

	# Set a0 to a random value
	li x10, 0xD34F7732

	cm.push {ra}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000

	cm.popretz {ra}, 64

test_5:
	li TESTNUM, 5

	# Set registers
	li x8, 0x37D3511D

	# Set a0 to a random value
	li x10, 0x199DA287

	cm.push {ra, s0}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popretz  {ra, s0}, 16

test_6:
	li TESTNUM, 6

	# Set registers
	li x8, 0x0D711CAD

	# Set a0 to a random value
	li x10, 0xE4079750

	cm.push {ra, s0}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popretz  {ra, s0}, 32

test_7:
	li TESTNUM, 7

	# Set registers
	li x8, 0xE2614DF0

	# Set a0 to a random value
	li x10, 0x7789F7D6

	cm.push {ra, s0}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popretz  {ra, s0}, 48

test_8:
	li TESTNUM, 8

	# Set registers
	li x8, 0xB8EC7913

	# Set a0 to a random value
	li x10, 0x635D5C6B

	cm.push {ra, s0}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000

	cm.popretz  {ra, s0}, 64

test_9:
	li TESTNUM, 9

	# Set registers
	li x8, 0x6A2AFE99
	li x9, 0x8C6843DD

	# Set a0 to a random value
	li x10, 0x0D8BC1F0

	cm.push {ra, s0-s1}, -16

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popretz  {ra, s0-s1}, 16

test_10:
	li TESTNUM, 10

	# Set registers
	li x8, 0x37735933
	li x9, 0xD8DC6C85

	# Set a0 to a random value
	li x10, 0x0057F2DC

	cm.push {ra, s0-s1}, -32

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popretz  {ra, s0-s1}, 32

test_11:
	li TESTNUM, 11

	# Set registers
	li x8, 0x9CA3004F
	li x9, 0xC0E471ED

	# Set a0 to a random value
	li x10, 0xC708F8D0

	cm.push {ra, s0-s1}, -48

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popretz  {ra, s0-s1}, 48

test_12:
	li TESTNUM, 12

	# Set registers
	li x8, 0xC858E2C9
	li x9, 0xEB009C39

	# Set a0 to a random value
	li x10, 0x3B1489D2

	cm.push {ra, s0-s1}, -64

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popretz  {ra, s0-s1}, 64

test_13:
	li TESTNUM, 13

	# Set registers
	li x8, 0x4D593FC3
	li x9, 0x13AAE3AB
	li x18, 0x45699466

	# Set a0 to a random value
	li x10, 0xD0694740

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

	cm.popretz  {ra, s0-s2}, 16

test_14:
	li TESTNUM, 14

	# Set registers
	li x8, 0xE98F9EF6
	li x9, 0xEFCAF415
	li x18, 0x7BF26460

	# Set a0 to a random value
	li x10, 0xEA67BE86

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

	cm.popretz  {ra, s0-s2}, 32

test_15:
	li TESTNUM, 15

	# Set registers
	li x8, 0x4410CA07
	li x9, 0x93E3ABAC
	li x18, 0xE8E3D412

	# Set a0 to a random value
	li x10, 0x13186908

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

	cm.popretz  {ra, s0-s2}, 48

test_16:
	li TESTNUM, 16

	# Set registers
	li x8, 0x022E149C
	li x9, 0x0FC355A4
	li x18, 0xB118E104

	# Set a0 to a random value
	li x10, 0xC807A5E0

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

	cm.popretz  {ra, s0-s2}, 64

test_17:
	li TESTNUM, 17

	# Set registers
	li x8, 0x8868D9F6
	li x9, 0x2B95C3A4
	li x18, 0x6D1321AD
	li x19, 0xC4B0B73E

	# Set a0 to a random value
	li x10, 0xE9ACC742

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

	cm.popretz  {ra, s0-s3}, 32

test_18:
	li TESTNUM, 18

	# Set registers
	li x8, 0xDADCD76E
	li x9, 0xCFA5695A
	li x18, 0x4983A279
	li x19, 0xC57E46DC

	# Set a0 to a random value
	li x10, 0x03C80431

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

	cm.popretz  {ra, s0-s3}, 48

test_19:
	li TESTNUM, 19

	# Set registers
	li x8, 0x130E29F6
	li x9, 0x666BF798
	li x18, 0xF5360550
	li x19, 0x99ECB73D

	# Set a0 to a random value
	li x10, 0x7648C95B

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

	cm.popretz  {ra, s0-s3}, 64

test_20:
	li TESTNUM, 20

	# Set registers
	li x8, 0xAA22945B
	li x9, 0x050C3F3A
	li x18, 0xD479D1F3
	li x19, 0x537F5A0B

	# Set a0 to a random value
	li x10, 0xF3EF4674

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

	cm.popretz  {ra, s0-s3}, 80

test_21:
	li TESTNUM, 21

	# Set registers
	li x8, 0xBCB9DC6F
	li x9, 0xCF5496C3
	li x18, 0xFABB61AC
	li x19, 0x3AEF21F9
	li x20, 0xC18B2E1F

	# Set a0 to a random value
	li x10, 0xA9900D21

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

	cm.popretz  {ra, s0-s4}, 32

test_22:
	li TESTNUM, 22

	# Set registers
	li x8, 0xD9E8334C
	li x9, 0xCBC1FB27
	li x18, 0x8D687C67
	li x19, 0x19D1B170
	li x20, 0x5DBC8564

	# Set a0 to a random value
	li x10, 0x4D0448E7

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

	cm.popretz  {ra, s0-s4}, 48

test_23:
	li TESTNUM, 23

	# Set registers
	li x8, 0x6F162E63
	li x9, 0x0FC4F087
	li x18, 0x389C00AB
	li x19, 0xEF552205
	li x20, 0xD18D4773

	# Set a0 to a random value
	li x10, 0xDF57C5A9

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

	cm.popretz  {ra, s0-s4}, 64

test_24:
	li TESTNUM, 24

	# Set registers
	li x8, 0x8BB8B39D
	li x9, 0x8BC09D5C
	li x18, 0xC0B28217
	li x19, 0x4B605BE1
	li x20, 0x2414E4D2

	# Set a0 to a random value
	li x10, 0x6E12966D

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

	cm.popretz  {ra, s0-s4}, 80

test_25:
	li TESTNUM, 25

	# Set registers
	li x8, 0x674C039A
	li x9, 0x33CF1ECC
	li x18, 0xB60011DD
	li x19, 0x82A5B81F
	li x20, 0x185C579F
	li x21, 0x27E52C9B

	# Set a0 to a random value
	li x10, 0xD3C96590

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

	cm.popretz  {ra, s0-s5}, 32

test_26:
	li TESTNUM, 26

	# Set registers
	li x8, 0xA4B65AAF
	li x9, 0x10B8CD19
	li x18, 0xC5AACBB8
	li x19, 0xCA1C560F
	li x20, 0xFC8D6415
	li x21, 0xBE6DB902

	# Set a0 to a random value
	li x10, 0x799DA19F

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

	cm.popretz  {ra, s0-s5}, 48

test_27:
	li TESTNUM, 27

	# Set registers
	li x8, 0xA639ED49
	li x9, 0x1748CDDB
	li x18, 0xE81947FE
	li x19, 0x499A48E8
	li x20, 0x873B0892
	li x21, 0x62245880

	# Set a0 to a random value
	li x10, 0x0A96FBF3

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

	cm.popretz  {ra, s0-s5}, 64

test_28:
	li TESTNUM, 28

	# Set registers
	li x8, 0x3719E0F7
	li x9, 0x4EF0FC23
	li x18, 0xD91A9765
	li x19, 0x2D6C829C
	li x20, 0x00419B76
	li x21, 0x98CBBEFB

	# Set a0 to a random value
	li x10, 0x1F022489

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

	cm.popretz  {ra, s0-s5}, 80

test_29:
	li TESTNUM, 29

	# Set registers
	li x8, 0xECDAF977
	li x9, 0xDF315CDF
	li x18, 0x15F4D3B5
	li x19, 0xCA75D2C2
	li x20, 0x4F81BF39
	li x21, 0x2267D4F0
	li x22, 0x15D0B056

	# Set a0 to a random value
	li x10, 0xDB37A195

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

	cm.popretz  {ra, s0-s6}, 32

test_30:
	li TESTNUM, 30

	# Set registers
	li x8, 0xC436414E
	li x9, 0x6E4CB3DB
	li x18, 0x9D1DB16C
	li x19, 0x93766C02
	li x20, 0xAF7CEBFA
	li x21, 0xFF619700
	li x22, 0x287B0F11

	# Set a0 to a random value
	li x10, 0x8407679D

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

	cm.popretz  {ra, s0-s6}, 48

test_31:
	li TESTNUM, 31

	# Set registers
	li x8, 0xFA84DEBE
	li x9, 0x18FD1555
	li x18, 0x54D8476B
	li x19, 0x9B933E38
	li x20, 0xE2654839
	li x21, 0x228BF701
	li x22, 0xDA409A15

	# Set a0 to a random value
	li x10, 0xEADA24C7

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

	cm.popretz  {ra, s0-s6}, 64

test_32:
	li TESTNUM, 32

	# Set registers
	li x8, 0xB65475D8
	li x9, 0xF9A10986
	li x18, 0x628E128C
	li x19, 0x25487E79
	li x20, 0x1F6ABCFD
	li x21, 0x5FC9CC37
	li x22, 0x629AA282

	# Set a0 to a random value
	li x10, 0x18BCFC7A

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

	cm.popretz  {ra, s0-s6}, 80

test_33:
	li TESTNUM, 33

	# Set registers
	li x8, 0xF4A7ABCB
	li x9, 0xF26C753C
	li x18, 0xF2444ECF
	li x19, 0x88518265
	li x20, 0x1CFCD5DA
	li x21, 0x8C5E6F5E
	li x22, 0xD474F594
	li x23, 0xDDA96B15

	# Set a0 to a random value
	li x10, 0xE75101FD

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

	cm.popretz  {ra, s0-s7}, 48

test_34:
	li TESTNUM, 34

	# Set registers
	li x8, 0xFB523595
	li x9, 0x81DC1571
	li x18, 0xB668843B
	li x19, 0x3D68DB63
	li x20, 0x2D64389A
	li x21, 0x22F24070
	li x22, 0x60342A86
	li x23, 0xF4ABC975

	# Set a0 to a random value
	li x10, 0xC4D2C50B

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

	cm.popretz  {ra, s0-s7}, 64

test_35:
	li TESTNUM, 35

	# Set registers
	li x8, 0x11369696
	li x9, 0x387D42C8
	li x18, 0xF4DCDF4F
	li x19, 0x23AF25B3
	li x20, 0x15B5AF0B
	li x21, 0xCF7BCD71
	li x22, 0x19F64994
	li x23, 0x7F419BB1

	# Set a0 to a random value
	li x10, 0xA2926ADF

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

	cm.popretz  {ra, s0-s7}, 80

test_36:
	li TESTNUM, 36

	# Set registers
	li x8, 0x98957E1B
	li x9, 0x33B4C86C
	li x18, 0x02DD000B
	li x19, 0xCE1ED260
	li x20, 0x5E51D7FC
	li x21, 0x18245BA3
	li x22, 0xD200CB1D
	li x23, 0x164BD06B

	# Set a0 to a random value
	li x10, 0x7C0432C4

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

	cm.popretz  {ra, s0-s7}, 96

test_37:
	li TESTNUM, 37

	# Set registers
	li x8, 0xAA5DD009
	li x9, 0x5C2BA33D
	li x18, 0x202425E8
	li x19, 0xAA85E727
	li x20, 0x788D7A90
	li x21, 0x03A6A4C1
	li x22, 0xCF7E5D09
	li x23, 0xE9E8D330
	li x24, 0x63DE2DD4

	# Set a0 to a random value
	li x10, 0x39E6EFE0

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

	cm.popretz  {ra, s0-s8}, 48

test_38:
	li TESTNUM, 38

	# Set registers
	li x8, 0x49CA5280
	li x9, 0x71945974
	li x18, 0x735182E8
	li x19, 0x019A20E6
	li x20, 0xA70AC5AE
	li x21, 0xE7A21799
	li x22, 0x6057B30D
	li x23, 0x4395C785
	li x24, 0x5D6F30F1

	# Set a0 to a random value
	li x10, 0x4086D3C7

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

	cm.popretz  {ra, s0-s8}, 64

test_39:
	li TESTNUM, 39

	# Set registers
	li x8, 0x065CEE51
	li x9, 0x9EBB94D8
	li x18, 0x6E8CB08D
	li x19, 0xD37E00DA
	li x20, 0x2D07FBC1
	li x21, 0x7E46F4A7
	li x22, 0x11454D23
	li x23, 0x1682888B
	li x24, 0xEABF093C

	# Set a0 to a random value
	li x10, 0xCAD6AC8F

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

	cm.popretz  {ra, s0-s8}, 80

test_40:
	li TESTNUM, 40

	# Set registers
	li x8, 0x3A095A1D
	li x9, 0xD2E1864D
	li x18, 0xC889AABE
	li x19, 0x11AAF540
	li x20, 0x8A3D2836
	li x21, 0x2A7BABB2
	li x22, 0xC9DA03D2
	li x23, 0x35E54534
	li x24, 0x616B40A4

	# Set a0 to a random value
	li x10, 0x3365072E

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

	cm.popretz  {ra, s0-s8}, 96

test_41:
	li TESTNUM, 41

	# Set registers
	li x8, 0x4BA081CB
	li x9, 0x27275413
	li x18, 0xFBDCE728
	li x19, 0x18CEE238
	li x20, 0x4CFBA5B9
	li x21, 0xA9B6CE35
	li x22, 0x05392631
	li x23, 0x6FA76986
	li x24, 0x164A7DE9
	li x25, 0x01F59403

	# Set a0 to a random value
	li x10, 0x86B7687C

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

	cm.popretz  {ra, s0-s9}, 48

test_42:
	li TESTNUM, 42

	# Set registers
	li x8, 0xC04360DD
	li x9, 0xC67EA6BD
	li x18, 0xCD77EB7F
	li x19, 0x3B75D045
	li x20, 0xFCB95F7E
	li x21, 0x24227482
	li x22, 0x1C957285
	li x23, 0xEE54BD44
	li x24, 0xCBFB4EDE
	li x25, 0x26FC9DB8

	# Set a0 to a random value
	li x10, 0x19A65CFF

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

	cm.popretz  {ra, s0-s9}, 64

test_43:
	li TESTNUM, 43

	# Set registers
	li x8, 0x9562E091
	li x9, 0x3EE6C8C5
	li x18, 0x6E305B98
	li x19, 0x1911E4A8
	li x20, 0x9F9D5D08
	li x21, 0x34E2DD6C
	li x22, 0x3C37F7B5
	li x23, 0x858AD3F8
	li x24, 0x7805CE48
	li x25, 0xBE102479

	# Set a0 to a random value
	li x10, 0x6F5DABDD

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

	cm.popretz  {ra, s0-s9}, 80

test_44:
	li TESTNUM, 44

	# Set registers
	li x8, 0x7371AF0E
	li x9, 0x96F09C7F
	li x18, 0xC3BC0D03
	li x19, 0xC64CB7B3
	li x20, 0x7F0E783F
	li x21, 0xCB4DC8B8
	li x22, 0x3DDBF476
	li x23, 0x5AA5C207
	li x24, 0x11BC02BD
	li x25, 0x47A5BD70

	# Set a0 to a random value
	li x10, 0xE8FF24F3

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

	cm.popretz  {ra, s0-s9}, 96

test_45:
	li TESTNUM, 45

	# Set registers
	li x8, 0xF1259BDB
	li x9, 0x69C19056
	li x18, 0x6C285C14
	li x19, 0xB79082C1
	li x20, 0x6B13EF1B
	li x21, 0x99462E9F
	li x22, 0x09AEADF2
	li x23, 0xCEB78539
	li x24, 0x86774450
	li x25, 0x78E508A0
	li x26, 0x1FDC1F3C
	li x27, 0xD81785F6

	# Set a0 to a random value
	li x10, 0x34F91973

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

	cm.popretz  {ra, s0-s11}, 64

test_46:
	li TESTNUM, 46

	# Set registers
	li x8, 0x0FBC225A
	li x9, 0xC5716441
	li x18, 0x706DA80C
	li x19, 0x16C0F72C
	li x20, 0xBF3F41B4
	li x21, 0x0AFD8077
	li x22, 0xFD06B76B
	li x23, 0xE97E8F50
	li x24, 0x5619ED22
	li x25, 0x35F41D4E
	li x26, 0x806D97DD
	li x27, 0x1B758B92

	# Set a0 to a random value
	li x10, 0x611D1E82

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

	cm.popretz  {ra, s0-s11}, 80

test_47:
	li TESTNUM, 47

	# Set registers
	li x8, 0x94D0922B
	li x9, 0x84E07F35
	li x18, 0x822664F8
	li x19, 0xD0A9B260
	li x20, 0xA5A52187
	li x21, 0x379EEEA7
	li x22, 0xC86402AC
	li x23, 0x86FDF90E
	li x24, 0xAE293925
	li x25, 0x1AD87556
	li x26, 0xCFF6FB4C
	li x27, 0x8088EE17

	# Set a0 to a random value
	li x10, 0x0E87BD3D

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

	cm.popretz  {ra, s0-s11}, 96

test_48:
	li TESTNUM, 48

	# Set registers
	li x8, 0x566E6F6A
	li x9, 0x140084F6
	li x18, 0xEE82DAAF
	li x19, 0xCA9820CA
	li x20, 0xABC0DB72
	li x21, 0x1F6CAB6D
	li x22, 0x1F5CEAA8
	li x23, 0x0E2FE6FB
	li x24, 0xB98A68A4
	li x25, 0x551151C1
	li x26, 0xC38F73CE
	li x27, 0x307FFD1E

	# Set a0 to a random value
	li x10, 0x353F61B5

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

	cm.popretz  {ra, s0-s11}, 112

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