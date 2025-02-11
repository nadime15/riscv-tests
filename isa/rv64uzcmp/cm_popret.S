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
	li x7, 0x5D16ED55
	bne x8, x7, fail


	# TEST_6

	jal ra, test_6

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xADA1B120
	bne x8, x7, fail


	# TEST_7

	jal ra, test_7

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x30F73B4B
	bne x8, x7, fail


	# TEST_8

	jal ra, test_8

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x30C08905
	bne x8, x7, fail


	# TEST_9

	jal ra, test_9

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0xE943258F
	bne x8, x7, fail

	li x7, 0x53FBBC0F
	bne x9, x7, fail


	# TEST_10

	jal ra, test_10

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x6CD73A61
	bne x8, x7, fail

	li x7, 0x368B09F3
	bne x9, x7, fail


	# TEST_11

	jal ra, test_11

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x4BB51A52
	bne x8, x7, fail

	li x7, 0x29AE25F7
	bne x9, x7, fail


	# TEST_12

	jal ra, test_12

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x74F876BB
	bne x8, x7, fail

	li x7, 0x7E8DFC47
	bne x9, x7, fail


	# TEST_13

	jal ra, test_13

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x107808FD
	bne x8, x7, fail

	li x7, 0xCA892850
	bne x9, x7, fail

	li x7, 0xBE6BB759
	bne x18, x7, fail


	# TEST_14

	jal ra, test_14

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xACAC6D2E
	bne x8, x7, fail

	li x7, 0xADE44B44
	bne x9, x7, fail

	li x7, 0x993B104D
	bne x18, x7, fail


	# TEST_15

	jal ra, test_15

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x527A379A
	bne x8, x7, fail

	li x7, 0x0DFDAC7A
	bne x9, x7, fail

	li x7, 0xBC4EAD03
	bne x18, x7, fail


	# TEST_16

	jal ra, test_16

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x7DE02F1B
	bne x8, x7, fail

	li x7, 0xC74A5B3D
	bne x9, x7, fail

	li x7, 0xA9502ED6
	bne x18, x7, fail


	# TEST_17

	jal ra, test_17

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x432C039E
	bne x8, x7, fail

	li x7, 0xC72391A3
	bne x9, x7, fail

	li x7, 0xAA3C2E8E
	bne x18, x7, fail

	li x7, 0xC7C64C31
	bne x19, x7, fail


	# TEST_18

	jal ra, test_18

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x06AA41CC
	bne x8, x7, fail

	li x7, 0x731D0E47
	bne x9, x7, fail

	li x7, 0x71FAB36C
	bne x18, x7, fail

	li x7, 0x16DD62ED
	bne x19, x7, fail


	# TEST_19

	jal ra, test_19

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xFC8267F7
	bne x8, x7, fail

	li x7, 0xF7A3DA06
	bne x9, x7, fail

	li x7, 0x710F99A2
	bne x18, x7, fail

	li x7, 0x0D57D8C0
	bne x19, x7, fail


	# TEST_20

	jal ra, test_20

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x8FE1C9AF
	bne x8, x7, fail

	li x7, 0x5B30AA33
	bne x9, x7, fail

	li x7, 0xCE67BDCE
	bne x18, x7, fail

	li x7, 0x7123147D
	bne x19, x7, fail


	# TEST_21

	jal ra, test_21

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xBE8167FB
	bne x8, x7, fail

	li x7, 0x3D259733
	bne x9, x7, fail

	li x7, 0x3C17E17B
	bne x18, x7, fail

	li x7, 0xCD0D0043
	bne x19, x7, fail

	li x7, 0x16E01926
	bne x20, x7, fail


	# TEST_22

	jal ra, test_22

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xFF6DE6EB
	bne x8, x7, fail

	li x7, 0x42C6A081
	bne x9, x7, fail

	li x7, 0xF36E7F06
	bne x18, x7, fail

	li x7, 0x39167321
	bne x19, x7, fail

	li x7, 0x55E9B39F
	bne x20, x7, fail


	# TEST_23

	jal ra, test_23

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xF9C3EE76
	bne x8, x7, fail

	li x7, 0x43DE70DB
	bne x9, x7, fail

	li x7, 0xE025BA21
	bne x18, x7, fail

	li x7, 0x326EA87D
	bne x19, x7, fail

	li x7, 0xC648E101
	bne x20, x7, fail


	# TEST_24

	jal ra, test_24

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x3EE14D28
	bne x8, x7, fail

	li x7, 0xD02EF8D5
	bne x9, x7, fail

	li x7, 0x5D10676E
	bne x18, x7, fail

	li x7, 0xA017A84A
	bne x19, x7, fail

	li x7, 0x85E9CB06
	bne x20, x7, fail


	# TEST_25

	jal ra, test_25

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x8FB6639A
	bne x8, x7, fail

	li x7, 0x8832AA62
	bne x9, x7, fail

	li x7, 0xF0CDD008
	bne x18, x7, fail

	li x7, 0x7ABFBA24
	bne x19, x7, fail

	li x7, 0x6944009A
	bne x20, x7, fail

	li x7, 0xAC81DEC2
	bne x21, x7, fail


	# TEST_26

	jal ra, test_26

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x7DA04529
	bne x8, x7, fail

	li x7, 0x3532E693
	bne x9, x7, fail

	li x7, 0xD519738E
	bne x18, x7, fail

	li x7, 0x6173CDFF
	bne x19, x7, fail

	li x7, 0xA876E6E1
	bne x20, x7, fail

	li x7, 0x70B1F429
	bne x21, x7, fail


	# TEST_27

	jal ra, test_27

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xC8B388A5
	bne x8, x7, fail

	li x7, 0x36C9C11A
	bne x9, x7, fail

	li x7, 0x28C8175B
	bne x18, x7, fail

	li x7, 0x696EDBF1
	bne x19, x7, fail

	li x7, 0x37DA1A99
	bne x20, x7, fail

	li x7, 0xA3DAA279
	bne x21, x7, fail


	# TEST_28

	jal ra, test_28

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x72BDC3F4
	bne x8, x7, fail

	li x7, 0x50109D3E
	bne x9, x7, fail

	li x7, 0x81BEBEE8
	bne x18, x7, fail

	li x7, 0x1693BCA8
	bne x19, x7, fail

	li x7, 0xEC0C53EE
	bne x20, x7, fail

	li x7, 0x0F2D2B0E
	bne x21, x7, fail


	# TEST_29

	jal ra, test_29

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x9949EEC3
	bne x8, x7, fail

	li x7, 0xC935E50B
	bne x9, x7, fail

	li x7, 0xC395123A
	bne x18, x7, fail

	li x7, 0x4566BC9B
	bne x19, x7, fail

	li x7, 0x20197C73
	bne x20, x7, fail

	li x7, 0xAA3FBFD9
	bne x21, x7, fail

	li x7, 0x185BF96C
	bne x22, x7, fail


	# TEST_30

	jal ra, test_30

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x4321FB15
	bne x8, x7, fail

	li x7, 0x91BAB04A
	bne x9, x7, fail

	li x7, 0x38AA37D0
	bne x18, x7, fail

	li x7, 0x126F2E63
	bne x19, x7, fail

	li x7, 0xD4CAE1C3
	bne x20, x7, fail

	li x7, 0x872C6F86
	bne x21, x7, fail

	li x7, 0xE9B4C295
	bne x22, x7, fail


	# TEST_31

	jal ra, test_31

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x8D669248
	bne x8, x7, fail

	li x7, 0xE2710C2A
	bne x9, x7, fail

	li x7, 0x21F7DDAD
	bne x18, x7, fail

	li x7, 0xD0643F34
	bne x19, x7, fail

	li x7, 0xFB76FD6D
	bne x20, x7, fail

	li x7, 0x104E2213
	bne x21, x7, fail

	li x7, 0x2F2818D3
	bne x22, x7, fail


	# TEST_32

	jal ra, test_32

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x56FFF1FC
	bne x8, x7, fail

	li x7, 0x4B1D7C20
	bne x9, x7, fail

	li x7, 0xAC2A853A
	bne x18, x7, fail

	li x7, 0x74A3EE5A
	bne x19, x7, fail

	li x7, 0x7EC25EC0
	bne x20, x7, fail

	li x7, 0x32556434
	bne x21, x7, fail

	li x7, 0x377CAFA2
	bne x22, x7, fail


	# TEST_33

	jal ra, test_33

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xE8A89500
	bne x8, x7, fail

	li x7, 0xC973C97A
	bne x9, x7, fail

	li x7, 0xA0C3863F
	bne x18, x7, fail

	li x7, 0x39319745
	bne x19, x7, fail

	li x7, 0x2A0ADD82
	bne x20, x7, fail

	li x7, 0x267B8A3E
	bne x21, x7, fail

	li x7, 0x92FF9F82
	bne x22, x7, fail

	li x7, 0xE4A84792
	bne x23, x7, fail


	# TEST_34

	jal ra, test_34

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x30458847
	bne x8, x7, fail

	li x7, 0x3B8C5B87
	bne x9, x7, fail

	li x7, 0xC0D8D92B
	bne x18, x7, fail

	li x7, 0x3959D367
	bne x19, x7, fail

	li x7, 0xBC199750
	bne x20, x7, fail

	li x7, 0x3ED291C4
	bne x21, x7, fail

	li x7, 0x9501DCC0
	bne x22, x7, fail

	li x7, 0x27D69774
	bne x23, x7, fail


	# TEST_35

	jal ra, test_35

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x75FB0517
	bne x8, x7, fail

	li x7, 0x60B4D948
	bne x9, x7, fail

	li x7, 0xB7AFFA21
	bne x18, x7, fail

	li x7, 0x6584845D
	bne x19, x7, fail

	li x7, 0xBE83552B
	bne x20, x7, fail

	li x7, 0x0D3450ED
	bne x21, x7, fail

	li x7, 0xC326DFA6
	bne x22, x7, fail

	li x7, 0x46047919
	bne x23, x7, fail


	# TEST_36

	jal ra, test_36

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x27979DD9
	bne x8, x7, fail

	li x7, 0x6800C12A
	bne x9, x7, fail

	li x7, 0x6F19677F
	bne x18, x7, fail

	li x7, 0x55403F25
	bne x19, x7, fail

	li x7, 0x3C74EF26
	bne x20, x7, fail

	li x7, 0x8F27ADF0
	bne x21, x7, fail

	li x7, 0x6875529C
	bne x22, x7, fail

	li x7, 0xA8681AD0
	bne x23, x7, fail


	# TEST_37

	jal ra, test_37

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x44B2013B
	bne x8, x7, fail

	li x7, 0xF2C67277
	bne x9, x7, fail

	li x7, 0xFBBA809F
	bne x18, x7, fail

	li x7, 0x4784CADF
	bne x19, x7, fail

	li x7, 0xCD5CB327
	bne x20, x7, fail

	li x7, 0x617B68AE
	bne x21, x7, fail

	li x7, 0x7CDA287E
	bne x22, x7, fail

	li x7, 0x5E74C9C5
	bne x23, x7, fail

	li x7, 0x1C30E95F
	bne x24, x7, fail


	# TEST_38

	jal ra, test_38

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x040739AA
	bne x8, x7, fail

	li x7, 0xFB67F526
	bne x9, x7, fail

	li x7, 0xDE3BAF7D
	bne x18, x7, fail

	li x7, 0x0D982392
	bne x19, x7, fail

	li x7, 0xE93B0FBC
	bne x20, x7, fail

	li x7, 0x08BA4339
	bne x21, x7, fail

	li x7, 0x025B76FE
	bne x22, x7, fail

	li x7, 0xC096EF3E
	bne x23, x7, fail

	li x7, 0xDFEB05A6
	bne x24, x7, fail


	# TEST_39

	jal ra, test_39

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x6ACF38B1
	bne x8, x7, fail

	li x7, 0x99AD87A6
	bne x9, x7, fail

	li x7, 0x881F777F
	bne x18, x7, fail

	li x7, 0xE3F9CA0D
	bne x19, x7, fail

	li x7, 0x4071E4BE
	bne x20, x7, fail

	li x7, 0x4886E492
	bne x21, x7, fail

	li x7, 0x4AC38F10
	bne x22, x7, fail

	li x7, 0xDE2DA35B
	bne x23, x7, fail

	li x7, 0xA2DF7EB5
	bne x24, x7, fail


	# TEST_40

	jal ra, test_40

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x9B88A968
	bne x8, x7, fail

	li x7, 0xCC733B60
	bne x9, x7, fail

	li x7, 0xE8535A5B
	bne x18, x7, fail

	li x7, 0xA0E8C8BC
	bne x19, x7, fail

	li x7, 0x1E03B38A
	bne x20, x7, fail

	li x7, 0x11C7CA9C
	bne x21, x7, fail

	li x7, 0xBDB8143A
	bne x22, x7, fail

	li x7, 0x09245C79
	bne x23, x7, fail

	li x7, 0x78EA01CB
	bne x24, x7, fail


	# TEST_41

	jal ra, test_41

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xC410E810
	bne x8, x7, fail

	li x7, 0xDFEB59DC
	bne x9, x7, fail

	li x7, 0x2F4F837E
	bne x18, x7, fail

	li x7, 0x868EE2A5
	bne x19, x7, fail

	li x7, 0xE715F488
	bne x20, x7, fail

	li x7, 0xE128BF3A
	bne x21, x7, fail

	li x7, 0xD91130E6
	bne x22, x7, fail

	li x7, 0x736BF0DF
	bne x23, x7, fail

	li x7, 0xE2C76BF9
	bne x24, x7, fail

	li x7, 0xA85683DA
	bne x25, x7, fail


	# TEST_42

	jal ra, test_42

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x2C605C01
	bne x8, x7, fail

	li x7, 0x4F2B63B8
	bne x9, x7, fail

	li x7, 0x0145FAA3
	bne x18, x7, fail

	li x7, 0x8DFA0788
	bne x19, x7, fail

	li x7, 0x620256B8
	bne x20, x7, fail

	li x7, 0xC2F56764
	bne x21, x7, fail

	li x7, 0xC2076018
	bne x22, x7, fail

	li x7, 0x911CB611
	bne x23, x7, fail

	li x7, 0x060944E0
	bne x24, x7, fail

	li x7, 0x70A8F799
	bne x25, x7, fail


	# TEST_43

	jal ra, test_43

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x0A4AE6BB
	bne x8, x7, fail

	li x7, 0x3E7FAF92
	bne x9, x7, fail

	li x7, 0x46826936
	bne x18, x7, fail

	li x7, 0xACB7BD2F
	bne x19, x7, fail

	li x7, 0x62A27699
	bne x20, x7, fail

	li x7, 0xC205DA20
	bne x21, x7, fail

	li x7, 0xA26C0C7E
	bne x22, x7, fail

	li x7, 0xAC10B0EC
	bne x23, x7, fail

	li x7, 0x2916AD4D
	bne x24, x7, fail

	li x7, 0xE4B8A6C8
	bne x25, x7, fail


	# TEST_44

	jal ra, test_44

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 144
	bne x29, sp, fail
	li x7, 0x0FE750AB
	bne x8, x7, fail

	li x7, 0x3E76896B
	bne x9, x7, fail

	li x7, 0x17C389FC
	bne x18, x7, fail

	li x7, 0x548FFD6B
	bne x19, x7, fail

	li x7, 0x66B8C1A7
	bne x20, x7, fail

	li x7, 0x5380CE35
	bne x21, x7, fail

	li x7, 0xDC348CA4
	bne x22, x7, fail

	li x7, 0x1F146E1C
	bne x23, x7, fail

	li x7, 0x2D797068
	bne x24, x7, fail

	li x7, 0xFB5A0D2E
	bne x25, x7, fail


	# TEST_45

	jal ra, test_45

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x65273007
	bne x8, x7, fail

	li x7, 0x87E32A20
	bne x9, x7, fail

	li x7, 0x49D2D1B3
	bne x18, x7, fail

	li x7, 0x440F2777
	bne x19, x7, fail

	li x7, 0xF6331E4C
	bne x20, x7, fail

	li x7, 0x59106BCD
	bne x21, x7, fail

	li x7, 0xF7619133
	bne x22, x7, fail

	li x7, 0x0EDF0E5A
	bne x23, x7, fail

	li x7, 0xFE31CA20
	bne x24, x7, fail

	li x7, 0x90B0F049
	bne x25, x7, fail

	li x7, 0x7C87F668
	bne x26, x7, fail

	li x7, 0xE9EF5F40
	bne x27, x7, fail


	# TEST_46

	jal ra, test_46

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x48112557
	bne x8, x7, fail

	li x7, 0xD8A715EF
	bne x9, x7, fail

	li x7, 0x99F13A93
	bne x18, x7, fail

	li x7, 0xA908DCB7
	bne x19, x7, fail

	li x7, 0x44DB0F1E
	bne x20, x7, fail

	li x7, 0x6C8DD574
	bne x21, x7, fail

	li x7, 0x2EAC2C7A
	bne x22, x7, fail

	li x7, 0xAE475B7A
	bne x23, x7, fail

	li x7, 0x328EBA9C
	bne x24, x7, fail

	li x7, 0xA3D4ED09
	bne x25, x7, fail

	li x7, 0xCB5BF76A
	bne x26, x7, fail

	li x7, 0x8FE3ACCE
	bne x27, x7, fail


	# TEST_47

	jal ra, test_47

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 144
	bne x29, sp, fail
	li x7, 0x2FBC730A
	bne x8, x7, fail

	li x7, 0x831AA4D7
	bne x9, x7, fail

	li x7, 0x4DF2DCDE
	bne x18, x7, fail

	li x7, 0x5B538848
	bne x19, x7, fail

	li x7, 0xD3D3FEBA
	bne x20, x7, fail

	li x7, 0x1B0B86F4
	bne x21, x7, fail

	li x7, 0x4348AB0D
	bne x22, x7, fail

	li x7, 0xF0B708B6
	bne x23, x7, fail

	li x7, 0x698BF55C
	bne x24, x7, fail

	li x7, 0xD1F65DAC
	bne x25, x7, fail

	li x7, 0x58DBFA1B
	bne x26, x7, fail

	li x7, 0xA5690A96
	bne x27, x7, fail


	# TEST_48

	jal ra, test_48

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 160
	bne x29, sp, fail
	li x7, 0xB85C0484
	bne x8, x7, fail

	li x7, 0xE80A87ED
	bne x9, x7, fail

	li x7, 0xD74CB0D1
	bne x18, x7, fail

	li x7, 0xB3139662
	bne x19, x7, fail

	li x7, 0xD9E1E46D
	bne x20, x7, fail

	li x7, 0x0AAFA0F2
	bne x21, x7, fail

	li x7, 0x62345695
	bne x22, x7, fail

	li x7, 0x7695B3A1
	bne x23, x7, fail

	li x7, 0x58649EE4
	bne x24, x7, fail

	li x7, 0x5C7B37DF
	bne x25, x7, fail

	li x7, 0xE2207F78
	bne x26, x7, fail

	li x7, 0x895E91E6
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
	li x8, 0x5D16ED55

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
	li x8, 0xADA1B120

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
	li x8, 0x30F73B4B

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
	li x8, 0x30C08905

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
	li x8, 0xE943258F
	li x9, 0x53FBBC0F

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

test_10:
	li TESTNUM, 10

	# Set registers
	li x8, 0x6CD73A61
	li x9, 0x368B09F3

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

test_11:
	li TESTNUM, 11

	# Set registers
	li x8, 0x4BB51A52
	li x9, 0x29AE25F7

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

test_12:
	li TESTNUM, 12

	# Set registers
	li x8, 0x74F876BB
	li x9, 0x7E8DFC47

	cm.push {ra, s0-s1}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popret  {ra, s0-s1}, 80

test_13:
	li TESTNUM, 13

	# Set registers
	li x8, 0x107808FD
	li x9, 0xCA892850
	li x18, 0xBE6BB759

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

test_14:
	li TESTNUM, 14

	# Set registers
	li x8, 0xACAC6D2E
	li x9, 0xADE44B44
	li x18, 0x993B104D

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

test_15:
	li TESTNUM, 15

	# Set registers
	li x8, 0x527A379A
	li x9, 0x0DFDAC7A
	li x18, 0xBC4EAD03

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

test_16:
	li TESTNUM, 16

	# Set registers
	li x8, 0x7DE02F1B
	li x9, 0xC74A5B3D
	li x18, 0xA9502ED6

	cm.push {ra, s0-s2}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000
	li x18, 0x0000000

	cm.popret  {ra, s0-s2}, 80

test_17:
	li TESTNUM, 17

	# Set registers
	li x8, 0x432C039E
	li x9, 0xC72391A3
	li x18, 0xAA3C2E8E
	li x19, 0xC7C64C31

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

test_18:
	li TESTNUM, 18

	# Set registers
	li x8, 0x06AA41CC
	li x9, 0x731D0E47
	li x18, 0x71FAB36C
	li x19, 0x16DD62ED

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

test_19:
	li TESTNUM, 19

	# Set registers
	li x8, 0xFC8267F7
	li x9, 0xF7A3DA06
	li x18, 0x710F99A2
	li x19, 0x0D57D8C0

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

test_20:
	li TESTNUM, 20

	# Set registers
	li x8, 0x8FE1C9AF
	li x9, 0x5B30AA33
	li x18, 0xCE67BDCE
	li x19, 0x7123147D

	cm.push {ra, s0-s3}, -96

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

	cm.popret  {ra, s0-s3}, 96

test_21:
	li TESTNUM, 21

	# Set registers
	li x8, 0xBE8167FB
	li x9, 0x3D259733
	li x18, 0x3C17E17B
	li x19, 0xCD0D0043
	li x20, 0x16E01926

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

test_22:
	li TESTNUM, 22

	# Set registers
	li x8, 0xFF6DE6EB
	li x9, 0x42C6A081
	li x18, 0xF36E7F06
	li x19, 0x39167321
	li x20, 0x55E9B39F

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

test_23:
	li TESTNUM, 23

	# Set registers
	li x8, 0xF9C3EE76
	li x9, 0x43DE70DB
	li x18, 0xE025BA21
	li x19, 0x326EA87D
	li x20, 0xC648E101

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

test_24:
	li TESTNUM, 24

	# Set registers
	li x8, 0x3EE14D28
	li x9, 0xD02EF8D5
	li x18, 0x5D10676E
	li x19, 0xA017A84A
	li x20, 0x85E9CB06

	cm.push {ra, s0-s4}, -96

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

	cm.popret  {ra, s0-s4}, 96

test_25:
	li TESTNUM, 25

	# Set registers
	li x8, 0x8FB6639A
	li x9, 0x8832AA62
	li x18, 0xF0CDD008
	li x19, 0x7ABFBA24
	li x20, 0x6944009A
	li x21, 0xAC81DEC2

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

test_26:
	li TESTNUM, 26

	# Set registers
	li x8, 0x7DA04529
	li x9, 0x3532E693
	li x18, 0xD519738E
	li x19, 0x6173CDFF
	li x20, 0xA876E6E1
	li x21, 0x70B1F429

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

test_27:
	li TESTNUM, 27

	# Set registers
	li x8, 0xC8B388A5
	li x9, 0x36C9C11A
	li x18, 0x28C8175B
	li x19, 0x696EDBF1
	li x20, 0x37DA1A99
	li x21, 0xA3DAA279

	cm.push {ra, s0-s5}, -96

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

	cm.popret  {ra, s0-s5}, 96

test_28:
	li TESTNUM, 28

	# Set registers
	li x8, 0x72BDC3F4
	li x9, 0x50109D3E
	li x18, 0x81BEBEE8
	li x19, 0x1693BCA8
	li x20, 0xEC0C53EE
	li x21, 0x0F2D2B0E

	cm.push {ra, s0-s5}, -112

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

	cm.popret  {ra, s0-s5}, 112

test_29:
	li TESTNUM, 29

	# Set registers
	li x8, 0x9949EEC3
	li x9, 0xC935E50B
	li x18, 0xC395123A
	li x19, 0x4566BC9B
	li x20, 0x20197C73
	li x21, 0xAA3FBFD9
	li x22, 0x185BF96C

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

test_30:
	li TESTNUM, 30

	# Set registers
	li x8, 0x4321FB15
	li x9, 0x91BAB04A
	li x18, 0x38AA37D0
	li x19, 0x126F2E63
	li x20, 0xD4CAE1C3
	li x21, 0x872C6F86
	li x22, 0xE9B4C295

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

test_31:
	li TESTNUM, 31

	# Set registers
	li x8, 0x8D669248
	li x9, 0xE2710C2A
	li x18, 0x21F7DDAD
	li x19, 0xD0643F34
	li x20, 0xFB76FD6D
	li x21, 0x104E2213
	li x22, 0x2F2818D3

	cm.push {ra, s0-s6}, -96

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

	cm.popret  {ra, s0-s6}, 96

test_32:
	li TESTNUM, 32

	# Set registers
	li x8, 0x56FFF1FC
	li x9, 0x4B1D7C20
	li x18, 0xAC2A853A
	li x19, 0x74A3EE5A
	li x20, 0x7EC25EC0
	li x21, 0x32556434
	li x22, 0x377CAFA2

	cm.push {ra, s0-s6}, -112

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

	cm.popret  {ra, s0-s6}, 112

test_33:
	li TESTNUM, 33

	# Set registers
	li x8, 0xE8A89500
	li x9, 0xC973C97A
	li x18, 0xA0C3863F
	li x19, 0x39319745
	li x20, 0x2A0ADD82
	li x21, 0x267B8A3E
	li x22, 0x92FF9F82
	li x23, 0xE4A84792

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

test_34:
	li TESTNUM, 34

	# Set registers
	li x8, 0x30458847
	li x9, 0x3B8C5B87
	li x18, 0xC0D8D92B
	li x19, 0x3959D367
	li x20, 0xBC199750
	li x21, 0x3ED291C4
	li x22, 0x9501DCC0
	li x23, 0x27D69774

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

test_35:
	li TESTNUM, 35

	# Set registers
	li x8, 0x75FB0517
	li x9, 0x60B4D948
	li x18, 0xB7AFFA21
	li x19, 0x6584845D
	li x20, 0xBE83552B
	li x21, 0x0D3450ED
	li x22, 0xC326DFA6
	li x23, 0x46047919

	cm.push {ra, s0-s7}, -112

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

	cm.popret  {ra, s0-s7}, 112

test_36:
	li TESTNUM, 36

	# Set registers
	li x8, 0x27979DD9
	li x9, 0x6800C12A
	li x18, 0x6F19677F
	li x19, 0x55403F25
	li x20, 0x3C74EF26
	li x21, 0x8F27ADF0
	li x22, 0x6875529C
	li x23, 0xA8681AD0

	cm.push {ra, s0-s7}, -128

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

	cm.popret  {ra, s0-s7}, 128

test_37:
	li TESTNUM, 37

	# Set registers
	li x8, 0x44B2013B
	li x9, 0xF2C67277
	li x18, 0xFBBA809F
	li x19, 0x4784CADF
	li x20, 0xCD5CB327
	li x21, 0x617B68AE
	li x22, 0x7CDA287E
	li x23, 0x5E74C9C5
	li x24, 0x1C30E95F

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

test_38:
	li TESTNUM, 38

	# Set registers
	li x8, 0x040739AA
	li x9, 0xFB67F526
	li x18, 0xDE3BAF7D
	li x19, 0x0D982392
	li x20, 0xE93B0FBC
	li x21, 0x08BA4339
	li x22, 0x025B76FE
	li x23, 0xC096EF3E
	li x24, 0xDFEB05A6

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

test_39:
	li TESTNUM, 39

	# Set registers
	li x8, 0x6ACF38B1
	li x9, 0x99AD87A6
	li x18, 0x881F777F
	li x19, 0xE3F9CA0D
	li x20, 0x4071E4BE
	li x21, 0x4886E492
	li x22, 0x4AC38F10
	li x23, 0xDE2DA35B
	li x24, 0xA2DF7EB5

	cm.push {ra, s0-s8}, -112

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

	cm.popret  {ra, s0-s8}, 112

test_40:
	li TESTNUM, 40

	# Set registers
	li x8, 0x9B88A968
	li x9, 0xCC733B60
	li x18, 0xE8535A5B
	li x19, 0xA0E8C8BC
	li x20, 0x1E03B38A
	li x21, 0x11C7CA9C
	li x22, 0xBDB8143A
	li x23, 0x09245C79
	li x24, 0x78EA01CB

	cm.push {ra, s0-s8}, -128

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

	cm.popret  {ra, s0-s8}, 128

test_41:
	li TESTNUM, 41

	# Set registers
	li x8, 0xC410E810
	li x9, 0xDFEB59DC
	li x18, 0x2F4F837E
	li x19, 0x868EE2A5
	li x20, 0xE715F488
	li x21, 0xE128BF3A
	li x22, 0xD91130E6
	li x23, 0x736BF0DF
	li x24, 0xE2C76BF9
	li x25, 0xA85683DA

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

test_42:
	li TESTNUM, 42

	# Set registers
	li x8, 0x2C605C01
	li x9, 0x4F2B63B8
	li x18, 0x0145FAA3
	li x19, 0x8DFA0788
	li x20, 0x620256B8
	li x21, 0xC2F56764
	li x22, 0xC2076018
	li x23, 0x911CB611
	li x24, 0x060944E0
	li x25, 0x70A8F799

	cm.push {ra, s0-s9}, -112

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

	cm.popret  {ra, s0-s9}, 112

test_43:
	li TESTNUM, 43

	# Set registers
	li x8, 0x0A4AE6BB
	li x9, 0x3E7FAF92
	li x18, 0x46826936
	li x19, 0xACB7BD2F
	li x20, 0x62A27699
	li x21, 0xC205DA20
	li x22, 0xA26C0C7E
	li x23, 0xAC10B0EC
	li x24, 0x2916AD4D
	li x25, 0xE4B8A6C8

	cm.push {ra, s0-s9}, -128

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

	cm.popret  {ra, s0-s9}, 128

test_44:
	li TESTNUM, 44

	# Set registers
	li x8, 0x0FE750AB
	li x9, 0x3E76896B
	li x18, 0x17C389FC
	li x19, 0x548FFD6B
	li x20, 0x66B8C1A7
	li x21, 0x5380CE35
	li x22, 0xDC348CA4
	li x23, 0x1F146E1C
	li x24, 0x2D797068
	li x25, 0xFB5A0D2E

	cm.push {ra, s0-s9}, -144

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

	cm.popret  {ra, s0-s9}, 144

test_45:
	li TESTNUM, 45

	# Set registers
	li x8, 0x65273007
	li x9, 0x87E32A20
	li x18, 0x49D2D1B3
	li x19, 0x440F2777
	li x20, 0xF6331E4C
	li x21, 0x59106BCD
	li x22, 0xF7619133
	li x23, 0x0EDF0E5A
	li x24, 0xFE31CA20
	li x25, 0x90B0F049
	li x26, 0x7C87F668
	li x27, 0xE9EF5F40

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

test_46:
	li TESTNUM, 46

	# Set registers
	li x8, 0x48112557
	li x9, 0xD8A715EF
	li x18, 0x99F13A93
	li x19, 0xA908DCB7
	li x20, 0x44DB0F1E
	li x21, 0x6C8DD574
	li x22, 0x2EAC2C7A
	li x23, 0xAE475B7A
	li x24, 0x328EBA9C
	li x25, 0xA3D4ED09
	li x26, 0xCB5BF76A
	li x27, 0x8FE3ACCE

	cm.push {ra, s0-s11}, -128

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

	cm.popret  {ra, s0-s11}, 128

test_47:
	li TESTNUM, 47

	# Set registers
	li x8, 0x2FBC730A
	li x9, 0x831AA4D7
	li x18, 0x4DF2DCDE
	li x19, 0x5B538848
	li x20, 0xD3D3FEBA
	li x21, 0x1B0B86F4
	li x22, 0x4348AB0D
	li x23, 0xF0B708B6
	li x24, 0x698BF55C
	li x25, 0xD1F65DAC
	li x26, 0x58DBFA1B
	li x27, 0xA5690A96

	cm.push {ra, s0-s11}, -144

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

	cm.popret  {ra, s0-s11}, 144

test_48:
	li TESTNUM, 48

	# Set registers
	li x8, 0xB85C0484
	li x9, 0xE80A87ED
	li x18, 0xD74CB0D1
	li x19, 0xB3139662
	li x20, 0xD9E1E46D
	li x21, 0x0AAFA0F2
	li x22, 0x62345695
	li x23, 0x7695B3A1
	li x24, 0x58649EE4
	li x25, 0x5C7B37DF
	li x26, 0xE2207F78
	li x27, 0x895E91E6

	cm.push {ra, s0-s11}, -160

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

	cm.popret  {ra, s0-s11}, 160

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