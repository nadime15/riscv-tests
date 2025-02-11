
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
	li x7, 0x973C7B9D
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
	li x7, 0x47BB8EB5
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
	li x7, 0xB721EE60
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
	li x7, 0xC8220268
	bne x8, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_9

	jal ra, test_9

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x4B8E8B4B
	bne x8, x7, fail

	li x7, 0xD4782D7E
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_10

	jal ra, test_10

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x51DAA62A
	bne x8, x7, fail

	li x7, 0xA51152BF
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_11

	jal ra, test_11

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xDE9FAAD3
	bne x8, x7, fail

	li x7, 0xEB66242F
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_12

	jal ra, test_12

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x96418935
	bne x8, x7, fail

	li x7, 0x3A91A44F
	bne x9, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_13

	jal ra, test_13

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 32
	bne x29, sp, fail
	li x7, 0x2428D93B
	bne x8, x7, fail

	li x7, 0x8210657A
	bne x9, x7, fail

	li x7, 0xAD78AE14
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_14

	jal ra, test_14

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x951BAB05
	bne x8, x7, fail

	li x7, 0x7B088C09
	bne x9, x7, fail

	li x7, 0x574E55D2
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_15

	jal ra, test_15

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x1408A055
	bne x8, x7, fail

	li x7, 0x62882E70
	bne x9, x7, fail

	li x7, 0x12BA2872
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_16

	jal ra, test_16

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x745EB3F6
	bne x8, x7, fail

	li x7, 0x564297F7
	bne x9, x7, fail

	li x7, 0x92C5A731
	bne x18, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_17

	jal ra, test_17

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0xE612158F
	bne x8, x7, fail

	li x7, 0x7C41F488
	bne x9, x7, fail

	li x7, 0x858D755D
	bne x18, x7, fail

	li x7, 0xF57A92C0
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_18

	jal ra, test_18

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x0E2E9851
	bne x8, x7, fail

	li x7, 0xF52B6354
	bne x9, x7, fail

	li x7, 0xDD61B188
	bne x18, x7, fail

	li x7, 0x74E63296
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_19

	jal ra, test_19

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x35C9A716
	bne x8, x7, fail

	li x7, 0x3006C115
	bne x9, x7, fail

	li x7, 0x1425EC55
	bne x18, x7, fail

	li x7, 0x16665D14
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_20

	jal ra, test_20

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x0B5CD7D7
	bne x8, x7, fail

	li x7, 0x889805D4
	bne x9, x7, fail

	li x7, 0x9A6BDC6D
	bne x18, x7, fail

	li x7, 0xFA263E75
	bne x19, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_21

	jal ra, test_21

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 48
	bne x29, sp, fail
	li x7, 0x563FD5BA
	bne x8, x7, fail

	li x7, 0xC6182A24
	bne x9, x7, fail

	li x7, 0xBCB39A17
	bne x18, x7, fail

	li x7, 0xDCE72AF5
	bne x19, x7, fail

	li x7, 0x9A747E1E
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_22

	jal ra, test_22

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0xB307C663
	bne x8, x7, fail

	li x7, 0x3037E046
	bne x9, x7, fail

	li x7, 0x932FA633
	bne x18, x7, fail

	li x7, 0x1B95FB5D
	bne x19, x7, fail

	li x7, 0x1A2AECA4
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_23

	jal ra, test_23

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xB630F4D5
	bne x8, x7, fail

	li x7, 0x22F04560
	bne x9, x7, fail

	li x7, 0x18BD2971
	bne x18, x7, fail

	li x7, 0x6805585C
	bne x19, x7, fail

	li x7, 0x452EBAA4
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_24

	jal ra, test_24

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xDCDF23FD
	bne x8, x7, fail

	li x7, 0xE58CB62E
	bne x9, x7, fail

	li x7, 0x1AC5986F
	bne x18, x7, fail

	li x7, 0x61B3AA6F
	bne x19, x7, fail

	li x7, 0x1112FDD5
	bne x20, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_25

	jal ra, test_25

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x84E0A73D
	bne x8, x7, fail

	li x7, 0xCAC5CBF7
	bne x9, x7, fail

	li x7, 0xEBAA4549
	bne x18, x7, fail

	li x7, 0x5BA1239E
	bne x19, x7, fail

	li x7, 0xF9EB3101
	bne x20, x7, fail

	li x7, 0x66C79C36
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_26

	jal ra, test_26

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x8349E6BD
	bne x8, x7, fail

	li x7, 0x65E303C0
	bne x9, x7, fail

	li x7, 0x5810AF59
	bne x18, x7, fail

	li x7, 0x8A350523
	bne x19, x7, fail

	li x7, 0xBDF8E141
	bne x20, x7, fail

	li x7, 0x988F97B0
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_27

	jal ra, test_27

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x99A3DC70
	bne x8, x7, fail

	li x7, 0xD03DA62F
	bne x9, x7, fail

	li x7, 0x05066704
	bne x18, x7, fail

	li x7, 0xEF8F5D17
	bne x19, x7, fail

	li x7, 0x6F40F6BF
	bne x20, x7, fail

	li x7, 0x5238FB6A
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_28

	jal ra, test_28

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x4026C566
	bne x8, x7, fail

	li x7, 0xBA89DF70
	bne x9, x7, fail

	li x7, 0xE3029B5F
	bne x18, x7, fail

	li x7, 0x7578CFBB
	bne x19, x7, fail

	li x7, 0x13E0FFA8
	bne x20, x7, fail

	li x7, 0x8EBD7AB1
	bne x21, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_29

	jal ra, test_29

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 64
	bne x29, sp, fail
	li x7, 0x6C10228A
	bne x8, x7, fail

	li x7, 0xB7E97DB8
	bne x9, x7, fail

	li x7, 0xCAD0320C
	bne x18, x7, fail

	li x7, 0x9B7C7132
	bne x19, x7, fail

	li x7, 0xF1F14FA9
	bne x20, x7, fail

	li x7, 0xBD9D7A02
	bne x21, x7, fail

	li x7, 0xCE1B4F4F
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_30

	jal ra, test_30

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x86FE0273
	bne x8, x7, fail

	li x7, 0x690C6051
	bne x9, x7, fail

	li x7, 0x0DDAC559
	bne x18, x7, fail

	li x7, 0x7B3CB285
	bne x19, x7, fail

	li x7, 0xA7FDABE5
	bne x20, x7, fail

	li x7, 0x404368D3
	bne x21, x7, fail

	li x7, 0x44966AB8
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_31

	jal ra, test_31

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x6EE61288
	bne x8, x7, fail

	li x7, 0xE2DB5EA4
	bne x9, x7, fail

	li x7, 0xECAB9C57
	bne x18, x7, fail

	li x7, 0xD8817649
	bne x19, x7, fail

	li x7, 0x34605082
	bne x20, x7, fail

	li x7, 0xCCB103A2
	bne x21, x7, fail

	li x7, 0xBDA3CFD9
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_32

	jal ra, test_32

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0xCE9B8B96
	bne x8, x7, fail

	li x7, 0x7D884C99
	bne x9, x7, fail

	li x7, 0x6335AC61
	bne x18, x7, fail

	li x7, 0x5951E1C2
	bne x19, x7, fail

	li x7, 0x38F18AF7
	bne x20, x7, fail

	li x7, 0xA0297B02
	bne x21, x7, fail

	li x7, 0x0E5BD5C5
	bne x22, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_33

	jal ra, test_33

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0xE1DB4937
	bne x8, x7, fail

	li x7, 0xF7478F13
	bne x9, x7, fail

	li x7, 0x96566781
	bne x18, x7, fail

	li x7, 0xB7F8F208
	bne x19, x7, fail

	li x7, 0x86F0FAFD
	bne x20, x7, fail

	li x7, 0x0A2BEEC1
	bne x21, x7, fail

	li x7, 0xCD7CF3AC
	bne x22, x7, fail

	li x7, 0xD2FEBECA
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_34

	jal ra, test_34

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x4E23A07E
	bne x8, x7, fail

	li x7, 0xA31EE558
	bne x9, x7, fail

	li x7, 0x6C64800A
	bne x18, x7, fail

	li x7, 0x217EABF6
	bne x19, x7, fail

	li x7, 0x23E69C20
	bne x20, x7, fail

	li x7, 0x62006B82
	bne x21, x7, fail

	li x7, 0xB80F7830
	bne x22, x7, fail

	li x7, 0x1A0635FA
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_35

	jal ra, test_35

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0xECC72CBB
	bne x8, x7, fail

	li x7, 0x3C0D22A8
	bne x9, x7, fail

	li x7, 0xF026D12A
	bne x18, x7, fail

	li x7, 0xF92ED5EA
	bne x19, x7, fail

	li x7, 0x60150A56
	bne x20, x7, fail

	li x7, 0x90C41557
	bne x21, x7, fail

	li x7, 0xA20892F3
	bne x22, x7, fail

	li x7, 0x63A201A0
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_36

	jal ra, test_36

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x4BDE105C
	bne x8, x7, fail

	li x7, 0x2C7B75AF
	bne x9, x7, fail

	li x7, 0x2B754FCE
	bne x18, x7, fail

	li x7, 0x1D6B3847
	bne x19, x7, fail

	li x7, 0xA830C575
	bne x20, x7, fail

	li x7, 0xAE51ED8F
	bne x21, x7, fail

	li x7, 0x0A6C24FE
	bne x22, x7, fail

	li x7, 0x85D0879E
	bne x23, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_37

	jal ra, test_37

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 80
	bne x29, sp, fail
	li x7, 0x0895550A
	bne x8, x7, fail

	li x7, 0xA6285959
	bne x9, x7, fail

	li x7, 0x7999D25C
	bne x18, x7, fail

	li x7, 0xD62F306E
	bne x19, x7, fail

	li x7, 0xDD97E158
	bne x20, x7, fail

	li x7, 0xFD4A8560
	bne x21, x7, fail

	li x7, 0x6E670D3F
	bne x22, x7, fail

	li x7, 0x15BC55E6
	bne x23, x7, fail

	li x7, 0x57DFE51A
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_38

	jal ra, test_38

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0x697483A9
	bne x8, x7, fail

	li x7, 0xE624C5FB
	bne x9, x7, fail

	li x7, 0xFB38202D
	bne x18, x7, fail

	li x7, 0x7C379595
	bne x19, x7, fail

	li x7, 0x3EEBD15D
	bne x20, x7, fail

	li x7, 0xC2531BCC
	bne x21, x7, fail

	li x7, 0x636C377B
	bne x22, x7, fail

	li x7, 0x076144E2
	bne x23, x7, fail

	li x7, 0x405D1639
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_39

	jal ra, test_39

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x4A9C5B07
	bne x8, x7, fail

	li x7, 0x9123ABD9
	bne x9, x7, fail

	li x7, 0x1E35C7FC
	bne x18, x7, fail

	li x7, 0xF854E530
	bne x19, x7, fail

	li x7, 0x792FE16B
	bne x20, x7, fail

	li x7, 0xDC62A25A
	bne x21, x7, fail

	li x7, 0xC147CEEE
	bne x22, x7, fail

	li x7, 0xA73F3C29
	bne x23, x7, fail

	li x7, 0x5A05399C
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_40

	jal ra, test_40

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x4AFA3C5A
	bne x8, x7, fail

	li x7, 0x468DB4F5
	bne x9, x7, fail

	li x7, 0xB9781B42
	bne x18, x7, fail

	li x7, 0x6CB48D8D
	bne x19, x7, fail

	li x7, 0x064993F7
	bne x20, x7, fail

	li x7, 0x86693F37
	bne x21, x7, fail

	li x7, 0xE4E26961
	bne x22, x7, fail

	li x7, 0xE9EB5311
	bne x23, x7, fail

	li x7, 0x734783E2
	bne x24, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_41

	jal ra, test_41

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 96
	bne x29, sp, fail
	li x7, 0xB70F082D
	bne x8, x7, fail

	li x7, 0xEA5E5CF6
	bne x9, x7, fail

	li x7, 0xE93BCA8A
	bne x18, x7, fail

	li x7, 0x223D6394
	bne x19, x7, fail

	li x7, 0xB6369260
	bne x20, x7, fail

	li x7, 0xA3DA5E16
	bne x21, x7, fail

	li x7, 0xD864D6D4
	bne x22, x7, fail

	li x7, 0x22181E2D
	bne x23, x7, fail

	li x7, 0x09A35CA0
	bne x24, x7, fail

	li x7, 0x55C9DC9F
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_42

	jal ra, test_42

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0xF5854C26
	bne x8, x7, fail

	li x7, 0x6DD0E5AC
	bne x9, x7, fail

	li x7, 0xBFED897C
	bne x18, x7, fail

	li x7, 0xEB49D685
	bne x19, x7, fail

	li x7, 0xCA9E8D41
	bne x20, x7, fail

	li x7, 0x7599714C
	bne x21, x7, fail

	li x7, 0x7F86B99D
	bne x22, x7, fail

	li x7, 0xD221D929
	bne x23, x7, fail

	li x7, 0x0C13099F
	bne x24, x7, fail

	li x7, 0xE3E8D30F
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_43

	jal ra, test_43

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0xDF76E56A
	bne x8, x7, fail

	li x7, 0x932D3F05
	bne x9, x7, fail

	li x7, 0x3C58AED0
	bne x18, x7, fail

	li x7, 0x7F1445EA
	bne x19, x7, fail

	li x7, 0xB201E7DF
	bne x20, x7, fail

	li x7, 0x9C9DAC1C
	bne x21, x7, fail

	li x7, 0x7E320BED
	bne x22, x7, fail

	li x7, 0x7797FCDE
	bne x23, x7, fail

	li x7, 0xD6272F09
	bne x24, x7, fail

	li x7, 0x660B66AF
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_44

	jal ra, test_44

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 144
	bne x29, sp, fail
	li x7, 0x9C799461
	bne x8, x7, fail

	li x7, 0xA78DF9FB
	bne x9, x7, fail

	li x7, 0xD66BE44E
	bne x18, x7, fail

	li x7, 0xC57D6D9D
	bne x19, x7, fail

	li x7, 0x1B2DBEDE
	bne x20, x7, fail

	li x7, 0xD6AB03BF
	bne x21, x7, fail

	li x7, 0x9B90B02A
	bne x22, x7, fail

	li x7, 0xE6374337
	bne x23, x7, fail

	li x7, 0x1A2338BC
	bne x24, x7, fail

	li x7, 0x19516A61
	bne x25, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_45

	jal ra, test_45

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 112
	bne x29, sp, fail
	li x7, 0x437DD5C2
	bne x8, x7, fail

	li x7, 0x33EC7C48
	bne x9, x7, fail

	li x7, 0xD3DCFD3D
	bne x18, x7, fail

	li x7, 0x7748B2B2
	bne x19, x7, fail

	li x7, 0xDDB523D6
	bne x20, x7, fail

	li x7, 0xF42DE69C
	bne x21, x7, fail

	li x7, 0xA38441C3
	bne x22, x7, fail

	li x7, 0x95E47A90
	bne x23, x7, fail

	li x7, 0x7261571F
	bne x24, x7, fail

	li x7, 0x2CE003D5
	bne x25, x7, fail

	li x7, 0xDEB972A7
	bne x26, x7, fail

	li x7, 0x572F960B
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_46

	jal ra, test_46

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 128
	bne x29, sp, fail
	li x7, 0x6E509A90
	bne x8, x7, fail

	li x7, 0x2FF9216D
	bne x9, x7, fail

	li x7, 0x0119A747
	bne x18, x7, fail

	li x7, 0xE3E07D59
	bne x19, x7, fail

	li x7, 0xBD998750
	bne x20, x7, fail

	li x7, 0x76CB648D
	bne x21, x7, fail

	li x7, 0x8DB5B5BC
	bne x22, x7, fail

	li x7, 0xC9A15193
	bne x23, x7, fail

	li x7, 0x8A33EF40
	bne x24, x7, fail

	li x7, 0x43B78357
	bne x25, x7, fail

	li x7, 0x3D02131C
	bne x26, x7, fail

	li x7, 0x73C6DFEF
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_47

	jal ra, test_47

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 144
	bne x29, sp, fail
	li x7, 0xD3D3576C
	bne x8, x7, fail

	li x7, 0x819E208F
	bne x9, x7, fail

	li x7, 0x2F33A8CC
	bne x18, x7, fail

	li x7, 0x7BC0AEA9
	bne x19, x7, fail

	li x7, 0x8D1A7782
	bne x20, x7, fail

	li x7, 0x86E8FBCE
	bne x21, x7, fail

	li x7, 0xEE4A1BE2
	bne x22, x7, fail

	li x7, 0x679A1FD6
	bne x23, x7, fail

	li x7, 0xB01DDFCC
	bne x24, x7, fail

	li x7, 0x1AB53EFD
	bne x25, x7, fail

	li x7, 0x487F7F82
	bne x26, x7, fail

	li x7, 0x683D189A
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	# TEST_48

	jal ra, test_48

	# Check ra
	bne ra, x28, fail

	# Check stack pointer
	addi x29, x29, 160
	bne x29, sp, fail
	li x7, 0xCB2804D0
	bne x8, x7, fail

	li x7, 0x15D77289
	bne x9, x7, fail

	li x7, 0x05E67719
	bne x18, x7, fail

	li x7, 0x9AD1664E
	bne x19, x7, fail

	li x7, 0x275E2C71
	bne x20, x7, fail

	li x7, 0xF685B12E
	bne x21, x7, fail

	li x7, 0xC7586426
	bne x22, x7, fail

	li x7, 0x95156E68
	bne x23, x7, fail

	li x7, 0xA41E9731
	bne x24, x7, fail

	li x7, 0x542E1E6A
	bne x25, x7, fail

	li x7, 0x39613A9B
	bne x26, x7, fail

	li x7, 0xC67AAFA4
	bne x27, x7, fail

	# Check a0
	li x7, 0x00000000
	bne x10, x7, fail

	RVTEST_PASS

test_1:
	li TESTNUM, 1

	# Set registers

	# Set a0 to a random value
	li x10, 0x7E98647D

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
	li x10, 0xCF3EBD1E

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
	li x10, 0x0DAEC0E9

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
	li x10, 0x178E2D6E

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
	li x8, 0x973C7B9D

	# Set a0 to a random value
	li x10, 0x75DBCEC6

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
	li x8, 0x47BB8EB5

	# Set a0 to a random value
	li x10, 0xEDB6219F

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
	li x8, 0xB721EE60

	# Set a0 to a random value
	li x10, 0xD75B2961

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
	li x8, 0xC8220268

	# Set a0 to a random value
	li x10, 0xC415881F

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
	li x8, 0x4B8E8B4B
	li x9, 0xD4782D7E

	# Set a0 to a random value
	li x10, 0x6367129D

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

test_10:
	li TESTNUM, 10

	# Set registers
	li x8, 0x51DAA62A
	li x9, 0xA51152BF

	# Set a0 to a random value
	li x10, 0xC6853B84

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

test_11:
	li TESTNUM, 11

	# Set registers
	li x8, 0xDE9FAAD3
	li x9, 0xEB66242F

	# Set a0 to a random value
	li x10, 0x11BA3186

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

test_12:
	li TESTNUM, 12

	# Set registers
	li x8, 0x96418935
	li x9, 0x3A91A44F

	# Set a0 to a random value
	li x10, 0x861D3866

	cm.push {ra, s0-s1}, -80

	# Save ra
	mv x28, ra

	# Save sp
	mv x29, sp

	# Reset registers
	li x1, 0x0000000
	li x8, 0x0000000
	li x9, 0x0000000

	cm.popretz  {ra, s0-s1}, 80

test_13:
	li TESTNUM, 13

	# Set registers
	li x8, 0x2428D93B
	li x9, 0x8210657A
	li x18, 0xAD78AE14

	# Set a0 to a random value
	li x10, 0x8C3A1064

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

test_14:
	li TESTNUM, 14

	# Set registers
	li x8, 0x951BAB05
	li x9, 0x7B088C09
	li x18, 0x574E55D2

	# Set a0 to a random value
	li x10, 0xAFF86042

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

test_15:
	li TESTNUM, 15

	# Set registers
	li x8, 0x1408A055
	li x9, 0x62882E70
	li x18, 0x12BA2872

	# Set a0 to a random value
	li x10, 0x7A02B554

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

test_16:
	li TESTNUM, 16

	# Set registers
	li x8, 0x745EB3F6
	li x9, 0x564297F7
	li x18, 0x92C5A731

	# Set a0 to a random value
	li x10, 0xCE3D066F

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

	cm.popretz  {ra, s0-s2}, 80

test_17:
	li TESTNUM, 17

	# Set registers
	li x8, 0xE612158F
	li x9, 0x7C41F488
	li x18, 0x858D755D
	li x19, 0xF57A92C0

	# Set a0 to a random value
	li x10, 0xD14D9D73

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

test_18:
	li TESTNUM, 18

	# Set registers
	li x8, 0x0E2E9851
	li x9, 0xF52B6354
	li x18, 0xDD61B188
	li x19, 0x74E63296

	# Set a0 to a random value
	li x10, 0x345DB776

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

test_19:
	li TESTNUM, 19

	# Set registers
	li x8, 0x35C9A716
	li x9, 0x3006C115
	li x18, 0x1425EC55
	li x19, 0x16665D14

	# Set a0 to a random value
	li x10, 0xB1EF5E51

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

test_20:
	li TESTNUM, 20

	# Set registers
	li x8, 0x0B5CD7D7
	li x9, 0x889805D4
	li x18, 0x9A6BDC6D
	li x19, 0xFA263E75

	# Set a0 to a random value
	li x10, 0xCD433E92

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

	cm.popretz  {ra, s0-s3}, 96

test_21:
	li TESTNUM, 21

	# Set registers
	li x8, 0x563FD5BA
	li x9, 0xC6182A24
	li x18, 0xBCB39A17
	li x19, 0xDCE72AF5
	li x20, 0x9A747E1E

	# Set a0 to a random value
	li x10, 0x92D0659B

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

test_22:
	li TESTNUM, 22

	# Set registers
	li x8, 0xB307C663
	li x9, 0x3037E046
	li x18, 0x932FA633
	li x19, 0x1B95FB5D
	li x20, 0x1A2AECA4

	# Set a0 to a random value
	li x10, 0x2B0E206D

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

test_23:
	li TESTNUM, 23

	# Set registers
	li x8, 0xB630F4D5
	li x9, 0x22F04560
	li x18, 0x18BD2971
	li x19, 0x6805585C
	li x20, 0x452EBAA4

	# Set a0 to a random value
	li x10, 0xEA192FE5

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

test_24:
	li TESTNUM, 24

	# Set registers
	li x8, 0xDCDF23FD
	li x9, 0xE58CB62E
	li x18, 0x1AC5986F
	li x19, 0x61B3AA6F
	li x20, 0x1112FDD5

	# Set a0 to a random value
	li x10, 0x17494B8A

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

	cm.popretz  {ra, s0-s4}, 96

test_25:
	li TESTNUM, 25

	# Set registers
	li x8, 0x84E0A73D
	li x9, 0xCAC5CBF7
	li x18, 0xEBAA4549
	li x19, 0x5BA1239E
	li x20, 0xF9EB3101
	li x21, 0x66C79C36

	# Set a0 to a random value
	li x10, 0xF7C0E435

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

test_26:
	li TESTNUM, 26

	# Set registers
	li x8, 0x8349E6BD
	li x9, 0x65E303C0
	li x18, 0x5810AF59
	li x19, 0x8A350523
	li x20, 0xBDF8E141
	li x21, 0x988F97B0

	# Set a0 to a random value
	li x10, 0x1EBFFF97

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

test_27:
	li TESTNUM, 27

	# Set registers
	li x8, 0x99A3DC70
	li x9, 0xD03DA62F
	li x18, 0x05066704
	li x19, 0xEF8F5D17
	li x20, 0x6F40F6BF
	li x21, 0x5238FB6A

	# Set a0 to a random value
	li x10, 0x0428F969

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

	cm.popretz  {ra, s0-s5}, 96

test_28:
	li TESTNUM, 28

	# Set registers
	li x8, 0x4026C566
	li x9, 0xBA89DF70
	li x18, 0xE3029B5F
	li x19, 0x7578CFBB
	li x20, 0x13E0FFA8
	li x21, 0x8EBD7AB1

	# Set a0 to a random value
	li x10, 0x6C030FDF

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

	cm.popretz  {ra, s0-s5}, 112

test_29:
	li TESTNUM, 29

	# Set registers
	li x8, 0x6C10228A
	li x9, 0xB7E97DB8
	li x18, 0xCAD0320C
	li x19, 0x9B7C7132
	li x20, 0xF1F14FA9
	li x21, 0xBD9D7A02
	li x22, 0xCE1B4F4F

	# Set a0 to a random value
	li x10, 0xA34416FE

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

test_30:
	li TESTNUM, 30

	# Set registers
	li x8, 0x86FE0273
	li x9, 0x690C6051
	li x18, 0x0DDAC559
	li x19, 0x7B3CB285
	li x20, 0xA7FDABE5
	li x21, 0x404368D3
	li x22, 0x44966AB8

	# Set a0 to a random value
	li x10, 0x07C772D2

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

test_31:
	li TESTNUM, 31

	# Set registers
	li x8, 0x6EE61288
	li x9, 0xE2DB5EA4
	li x18, 0xECAB9C57
	li x19, 0xD8817649
	li x20, 0x34605082
	li x21, 0xCCB103A2
	li x22, 0xBDA3CFD9

	# Set a0 to a random value
	li x10, 0xD827221A

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

	cm.popretz  {ra, s0-s6}, 96

test_32:
	li TESTNUM, 32

	# Set registers
	li x8, 0xCE9B8B96
	li x9, 0x7D884C99
	li x18, 0x6335AC61
	li x19, 0x5951E1C2
	li x20, 0x38F18AF7
	li x21, 0xA0297B02
	li x22, 0x0E5BD5C5

	# Set a0 to a random value
	li x10, 0xD47C3C21

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

	cm.popretz  {ra, s0-s6}, 112

test_33:
	li TESTNUM, 33

	# Set registers
	li x8, 0xE1DB4937
	li x9, 0xF7478F13
	li x18, 0x96566781
	li x19, 0xB7F8F208
	li x20, 0x86F0FAFD
	li x21, 0x0A2BEEC1
	li x22, 0xCD7CF3AC
	li x23, 0xD2FEBECA

	# Set a0 to a random value
	li x10, 0x45477F8F

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

test_34:
	li TESTNUM, 34

	# Set registers
	li x8, 0x4E23A07E
	li x9, 0xA31EE558
	li x18, 0x6C64800A
	li x19, 0x217EABF6
	li x20, 0x23E69C20
	li x21, 0x62006B82
	li x22, 0xB80F7830
	li x23, 0x1A0635FA

	# Set a0 to a random value
	li x10, 0xF3C6FC4B

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

test_35:
	li TESTNUM, 35

	# Set registers
	li x8, 0xECC72CBB
	li x9, 0x3C0D22A8
	li x18, 0xF026D12A
	li x19, 0xF92ED5EA
	li x20, 0x60150A56
	li x21, 0x90C41557
	li x22, 0xA20892F3
	li x23, 0x63A201A0

	# Set a0 to a random value
	li x10, 0x5F327726

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

	cm.popretz  {ra, s0-s7}, 112

test_36:
	li TESTNUM, 36

	# Set registers
	li x8, 0x4BDE105C
	li x9, 0x2C7B75AF
	li x18, 0x2B754FCE
	li x19, 0x1D6B3847
	li x20, 0xA830C575
	li x21, 0xAE51ED8F
	li x22, 0x0A6C24FE
	li x23, 0x85D0879E

	# Set a0 to a random value
	li x10, 0xA9D1CB36

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

	cm.popretz  {ra, s0-s7}, 128

test_37:
	li TESTNUM, 37

	# Set registers
	li x8, 0x0895550A
	li x9, 0xA6285959
	li x18, 0x7999D25C
	li x19, 0xD62F306E
	li x20, 0xDD97E158
	li x21, 0xFD4A8560
	li x22, 0x6E670D3F
	li x23, 0x15BC55E6
	li x24, 0x57DFE51A

	# Set a0 to a random value
	li x10, 0x458497E0

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

test_38:
	li TESTNUM, 38

	# Set registers
	li x8, 0x697483A9
	li x9, 0xE624C5FB
	li x18, 0xFB38202D
	li x19, 0x7C379595
	li x20, 0x3EEBD15D
	li x21, 0xC2531BCC
	li x22, 0x636C377B
	li x23, 0x076144E2
	li x24, 0x405D1639

	# Set a0 to a random value
	li x10, 0xA5D1BBFC

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

test_39:
	li TESTNUM, 39

	# Set registers
	li x8, 0x4A9C5B07
	li x9, 0x9123ABD9
	li x18, 0x1E35C7FC
	li x19, 0xF854E530
	li x20, 0x792FE16B
	li x21, 0xDC62A25A
	li x22, 0xC147CEEE
	li x23, 0xA73F3C29
	li x24, 0x5A05399C

	# Set a0 to a random value
	li x10, 0xFC3B98ED

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

	cm.popretz  {ra, s0-s8}, 112

test_40:
	li TESTNUM, 40

	# Set registers
	li x8, 0x4AFA3C5A
	li x9, 0x468DB4F5
	li x18, 0xB9781B42
	li x19, 0x6CB48D8D
	li x20, 0x064993F7
	li x21, 0x86693F37
	li x22, 0xE4E26961
	li x23, 0xE9EB5311
	li x24, 0x734783E2

	# Set a0 to a random value
	li x10, 0x9EB9C99E

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

	cm.popretz  {ra, s0-s8}, 128

test_41:
	li TESTNUM, 41

	# Set registers
	li x8, 0xB70F082D
	li x9, 0xEA5E5CF6
	li x18, 0xE93BCA8A
	li x19, 0x223D6394
	li x20, 0xB6369260
	li x21, 0xA3DA5E16
	li x22, 0xD864D6D4
	li x23, 0x22181E2D
	li x24, 0x09A35CA0
	li x25, 0x55C9DC9F

	# Set a0 to a random value
	li x10, 0x073289D4

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

test_42:
	li TESTNUM, 42

	# Set registers
	li x8, 0xF5854C26
	li x9, 0x6DD0E5AC
	li x18, 0xBFED897C
	li x19, 0xEB49D685
	li x20, 0xCA9E8D41
	li x21, 0x7599714C
	li x22, 0x7F86B99D
	li x23, 0xD221D929
	li x24, 0x0C13099F
	li x25, 0xE3E8D30F

	# Set a0 to a random value
	li x10, 0x62E55A3E

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

	cm.popretz  {ra, s0-s9}, 112

test_43:
	li TESTNUM, 43

	# Set registers
	li x8, 0xDF76E56A
	li x9, 0x932D3F05
	li x18, 0x3C58AED0
	li x19, 0x7F1445EA
	li x20, 0xB201E7DF
	li x21, 0x9C9DAC1C
	li x22, 0x7E320BED
	li x23, 0x7797FCDE
	li x24, 0xD6272F09
	li x25, 0x660B66AF

	# Set a0 to a random value
	li x10, 0x65857592

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

	cm.popretz  {ra, s0-s9}, 128

test_44:
	li TESTNUM, 44

	# Set registers
	li x8, 0x9C799461
	li x9, 0xA78DF9FB
	li x18, 0xD66BE44E
	li x19, 0xC57D6D9D
	li x20, 0x1B2DBEDE
	li x21, 0xD6AB03BF
	li x22, 0x9B90B02A
	li x23, 0xE6374337
	li x24, 0x1A2338BC
	li x25, 0x19516A61

	# Set a0 to a random value
	li x10, 0x7C1A1956

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

	cm.popretz  {ra, s0-s9}, 144

test_45:
	li TESTNUM, 45

	# Set registers
	li x8, 0x437DD5C2
	li x9, 0x33EC7C48
	li x18, 0xD3DCFD3D
	li x19, 0x7748B2B2
	li x20, 0xDDB523D6
	li x21, 0xF42DE69C
	li x22, 0xA38441C3
	li x23, 0x95E47A90
	li x24, 0x7261571F
	li x25, 0x2CE003D5
	li x26, 0xDEB972A7
	li x27, 0x572F960B

	# Set a0 to a random value
	li x10, 0x5279D50C

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

test_46:
	li TESTNUM, 46

	# Set registers
	li x8, 0x6E509A90
	li x9, 0x2FF9216D
	li x18, 0x0119A747
	li x19, 0xE3E07D59
	li x20, 0xBD998750
	li x21, 0x76CB648D
	li x22, 0x8DB5B5BC
	li x23, 0xC9A15193
	li x24, 0x8A33EF40
	li x25, 0x43B78357
	li x26, 0x3D02131C
	li x27, 0x73C6DFEF

	# Set a0 to a random value
	li x10, 0x6773539E

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

	cm.popretz  {ra, s0-s11}, 128

test_47:
	li TESTNUM, 47

	# Set registers
	li x8, 0xD3D3576C
	li x9, 0x819E208F
	li x18, 0x2F33A8CC
	li x19, 0x7BC0AEA9
	li x20, 0x8D1A7782
	li x21, 0x86E8FBCE
	li x22, 0xEE4A1BE2
	li x23, 0x679A1FD6
	li x24, 0xB01DDFCC
	li x25, 0x1AB53EFD
	li x26, 0x487F7F82
	li x27, 0x683D189A

	# Set a0 to a random value
	li x10, 0xE5A3BD50

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

	cm.popretz  {ra, s0-s11}, 144

test_48:
	li TESTNUM, 48

	# Set registers
	li x8, 0xCB2804D0
	li x9, 0x15D77289
	li x18, 0x05E67719
	li x19, 0x9AD1664E
	li x20, 0x275E2C71
	li x21, 0xF685B12E
	li x22, 0xC7586426
	li x23, 0x95156E68
	li x24, 0xA41E9731
	li x25, 0x542E1E6A
	li x26, 0x39613A9B
	li x27, 0xC67AAFA4

	# Set a0 to a random value
	li x10, 0x5A6BA9D9

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

	cm.popretz  {ra, s0-s11}, 160

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