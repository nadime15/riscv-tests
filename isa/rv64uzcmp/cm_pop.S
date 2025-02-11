#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

init:
    # Set initial sp
    la sp, tdat_end

	# Save sp
	mv x5, sp

test_1:
	li TESTNUM, 1

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x532DBA65

	cm.push {ra}, -16

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0x532DBA65
	bne x6, x1, fail

test_2:
	li TESTNUM, 2

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x2A46C66B

	cm.push {ra}, -32

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x2A46C66B
	bne x6, x1, fail

test_3:
	li TESTNUM, 3

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x33E068E9

	cm.push {ra}, -48

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x33E068E9
	bne x6, x1, fail

test_4:
	li TESTNUM, 4

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x798722A0

	cm.push {ra}, -64

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x798722A0
	bne x6, x1, fail

test_5:
	li TESTNUM, 5

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0xE0AA79D3
	li x8, 0xAAE088F5

	cm.push {ra, s0}, -16

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0xE0AA79D3
	bne x6, x1, fail

	li x6, 0xAAE088F5
	bne x6, x8, fail

test_6:
	li TESTNUM, 6

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0xCBD53F73
	li x8, 0x83D20AC4

	cm.push {ra, s0}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xCBD53F73
	bne x6, x1, fail

	li x6, 0x83D20AC4
	bne x6, x8, fail

test_7:
	li TESTNUM, 7

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x33382A22
	li x8, 0xC011721D

	cm.push {ra, s0}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x33382A22
	bne x6, x1, fail

	li x6, 0xC011721D
	bne x6, x8, fail

test_8:
	li TESTNUM, 8

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x0DDF942D
	li x8, 0xF474FB6F

	cm.push {ra, s0}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x0DDF942D
	bne x6, x1, fail

	li x6, 0xF474FB6F
	bne x6, x8, fail

test_9:
	li TESTNUM, 9

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x0EC4F874
	li x8, 0x4C48E3DE
	li x9, 0x473595A9

	cm.push {ra, s0-s1}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x0EC4F874
	bne x6, x1, fail

	li x6, 0x4C48E3DE
	bne x6, x8, fail

	li x6, 0x473595A9
	bne x6, x9, fail

test_10:
	li TESTNUM, 10

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0xDBBADDD4
	li x8, 0x9482F398
	li x9, 0x62F1D2AD

	cm.push {ra, s0-s1}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0xDBBADDD4
	bne x6, x1, fail

	li x6, 0x9482F398
	bne x6, x8, fail

	li x6, 0x62F1D2AD
	bne x6, x9, fail

test_11:
	li TESTNUM, 11

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x4796D0BC
	li x8, 0x95BAEDEA
	li x9, 0xB7B2F3F3

	cm.push {ra, s0-s1}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x4796D0BC
	bne x6, x1, fail

	li x6, 0x95BAEDEA
	bne x6, x8, fail

	li x6, 0xB7B2F3F3
	bne x6, x9, fail

test_12:
	li TESTNUM, 12

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x2770D3BA
	li x8, 0x994756BB
	li x9, 0xF15FE1BE

	cm.push {ra, s0-s1}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x2770D3BA
	bne x6, x1, fail

	li x6, 0x994756BB
	bne x6, x8, fail

	li x6, 0xF15FE1BE
	bne x6, x9, fail

test_13:
	li TESTNUM, 13

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xEE8F27EA
	li x8, 0x8F7917DD
	li x9, 0xD8930C75
	li x18, 0x2CCD86F1

	cm.push {ra, s0-s2}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xEE8F27EA
	bne x6, x1, fail

	li x6, 0x8F7917DD
	bne x6, x8, fail

	li x6, 0xD8930C75
	bne x6, x9, fail

	li x6, 0x2CCD86F1
	bne x6, x18, fail

test_14:
	li TESTNUM, 14

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x056B61D2
	li x8, 0x26E56D7A
	li x9, 0xF84BBCDD
	li x18, 0xFC152666

	cm.push {ra, s0-s2}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x056B61D2
	bne x6, x1, fail

	li x6, 0x26E56D7A
	bne x6, x8, fail

	li x6, 0xF84BBCDD
	bne x6, x9, fail

	li x6, 0xFC152666
	bne x6, x18, fail

test_15:
	li TESTNUM, 15

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x4DF59C9C
	li x8, 0x74E1B1CB
	li x9, 0x5FD41C09
	li x18, 0xB7672E11

	cm.push {ra, s0-s2}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x4DF59C9C
	bne x6, x1, fail

	li x6, 0x74E1B1CB
	bne x6, x8, fail

	li x6, 0x5FD41C09
	bne x6, x9, fail

	li x6, 0xB7672E11
	bne x6, x18, fail

test_16:
	li TESTNUM, 16

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x360F3119
	li x8, 0x0F559DE7
	li x9, 0x528859B6
	li x18, 0x5D42446F

	cm.push {ra, s0-s2}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x360F3119
	bne x6, x1, fail

	li x6, 0x0F559DE7
	bne x6, x8, fail

	li x6, 0x528859B6
	bne x6, x9, fail

	li x6, 0x5D42446F
	bne x6, x18, fail

test_17:
	li TESTNUM, 17

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0xFAED8A97
	li x8, 0xF56DD9B7
	li x9, 0xEF1E0840
	li x18, 0x78249B0D
	li x19, 0xA012047E

	cm.push {ra, s0-s3}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000

	cm.pop {ra, s0-s3}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0xFAED8A97
	bne x6, x1, fail

	li x6, 0xF56DD9B7
	bne x6, x8, fail

	li x6, 0xEF1E0840
	bne x6, x9, fail

	li x6, 0x78249B0D
	bne x6, x18, fail

	li x6, 0xA012047E
	bne x6, x19, fail

test_18:
	li TESTNUM, 18

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x76E17539
	li x8, 0x895E9FE1
	li x9, 0x0B5BA710
	li x18, 0x83E078BA
	li x19, 0xCB5C8610

	cm.push {ra, s0-s3}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000

	cm.pop {ra, s0-s3}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x76E17539
	bne x6, x1, fail

	li x6, 0x895E9FE1
	bne x6, x8, fail

	li x6, 0x0B5BA710
	bne x6, x9, fail

	li x6, 0x83E078BA
	bne x6, x18, fail

	li x6, 0xCB5C8610
	bne x6, x19, fail

test_19:
	li TESTNUM, 19

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x2FA08036
	li x8, 0x025875FF
	li x9, 0x39E24C02
	li x18, 0x52DADF85
	li x19, 0xB3299002

	cm.push {ra, s0-s3}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000

	cm.pop {ra, s0-s3}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x2FA08036
	bne x6, x1, fail

	li x6, 0x025875FF
	bne x6, x8, fail

	li x6, 0x39E24C02
	bne x6, x9, fail

	li x6, 0x52DADF85
	bne x6, x18, fail

	li x6, 0xB3299002
	bne x6, x19, fail

test_20:
	li TESTNUM, 20

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0xFC7FC362
	li x8, 0x9840C24A
	li x9, 0xC815EAD7
	li x18, 0xE8D45CD1
	li x19, 0xB9E9FFCB

	cm.push {ra, s0-s3}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000

	cm.pop {ra, s0-s3}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0xFC7FC362
	bne x6, x1, fail

	li x6, 0x9840C24A
	bne x6, x8, fail

	li x6, 0xC815EAD7
	bne x6, x9, fail

	li x6, 0xE8D45CD1
	bne x6, x18, fail

	li x6, 0xB9E9FFCB
	bne x6, x19, fail

test_21:
	li TESTNUM, 21

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x31ACF1D9
	li x8, 0xCAEBC6E4
	li x9, 0x588F547E
	li x18, 0x271036F7
	li x19, 0xAFE265B2
	li x20, 0xFB9E8B38

	cm.push {ra, s0-s4}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000

	cm.pop {ra, s0-s4}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x31ACF1D9
	bne x6, x1, fail

	li x6, 0xCAEBC6E4
	bne x6, x8, fail

	li x6, 0x588F547E
	bne x6, x9, fail

	li x6, 0x271036F7
	bne x6, x18, fail

	li x6, 0xAFE265B2
	bne x6, x19, fail

	li x6, 0xFB9E8B38
	bne x6, x20, fail

test_22:
	li TESTNUM, 22

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x40D1669F
	li x8, 0xBC564963
	li x9, 0x2529D1BD
	li x18, 0x7B7E37D8
	li x19, 0xC08E7F75
	li x20, 0x16FDB443

	cm.push {ra, s0-s4}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000

	cm.pop {ra, s0-s4}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x40D1669F
	bne x6, x1, fail

	li x6, 0xBC564963
	bne x6, x8, fail

	li x6, 0x2529D1BD
	bne x6, x9, fail

	li x6, 0x7B7E37D8
	bne x6, x18, fail

	li x6, 0xC08E7F75
	bne x6, x19, fail

	li x6, 0x16FDB443
	bne x6, x20, fail

test_23:
	li TESTNUM, 23

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x47D4E6BE
	li x8, 0x6D1570E0
	li x9, 0x830493D8
	li x18, 0xF9CC2DCE
	li x19, 0x6DEE990A
	li x20, 0xEBCAB49B

	cm.push {ra, s0-s4}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000

	cm.pop {ra, s0-s4}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x47D4E6BE
	bne x6, x1, fail

	li x6, 0x6D1570E0
	bne x6, x8, fail

	li x6, 0x830493D8
	bne x6, x9, fail

	li x6, 0xF9CC2DCE
	bne x6, x18, fail

	li x6, 0x6DEE990A
	bne x6, x19, fail

	li x6, 0xEBCAB49B
	bne x6, x20, fail

test_24:
	li TESTNUM, 24

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0xB82CC1A6
	li x8, 0x7D02C69E
	li x9, 0x3FCCD6DB
	li x18, 0xA94223FF
	li x19, 0x657DAA0E
	li x20, 0x8F89935B

	cm.push {ra, s0-s4}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000

	cm.pop {ra, s0-s4}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0xB82CC1A6
	bne x6, x1, fail

	li x6, 0x7D02C69E
	bne x6, x8, fail

	li x6, 0x3FCCD6DB
	bne x6, x9, fail

	li x6, 0xA94223FF
	bne x6, x18, fail

	li x6, 0x657DAA0E
	bne x6, x19, fail

	li x6, 0x8F89935B
	bne x6, x20, fail

test_25:
	li TESTNUM, 25

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xBC9AAED4
	li x8, 0x82FEF9A6
	li x9, 0x9FF5AEF1
	li x18, 0x94278F6A
	li x19, 0x3E0533F2
	li x20, 0x9C06D3C6
	li x21, 0x2D6427A2

	cm.push {ra, s0-s5}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0xBC9AAED4
	bne x6, x1, fail

	li x6, 0x82FEF9A6
	bne x6, x8, fail

	li x6, 0x9FF5AEF1
	bne x6, x9, fail

	li x6, 0x94278F6A
	bne x6, x18, fail

	li x6, 0x3E0533F2
	bne x6, x19, fail

	li x6, 0x9C06D3C6
	bne x6, x20, fail

	li x6, 0x2D6427A2
	bne x6, x21, fail

test_26:
	li TESTNUM, 26

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x4C4BAE86
	li x8, 0xA8F30D2F
	li x9, 0x5992EDBB
	li x18, 0x43FF8840
	li x19, 0x1D3549FA
	li x20, 0x9336516D
	li x21, 0x7F0E42F9

	cm.push {ra, s0-s5}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x4C4BAE86
	bne x6, x1, fail

	li x6, 0xA8F30D2F
	bne x6, x8, fail

	li x6, 0x5992EDBB
	bne x6, x9, fail

	li x6, 0x43FF8840
	bne x6, x18, fail

	li x6, 0x1D3549FA
	bne x6, x19, fail

	li x6, 0x9336516D
	bne x6, x20, fail

	li x6, 0x7F0E42F9
	bne x6, x21, fail

test_27:
	li TESTNUM, 27

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x25DE39B1
	li x8, 0x14B7F76D
	li x9, 0x5F7E002D
	li x18, 0x6345F75F
	li x19, 0x076B6103
	li x20, 0xFE174636
	li x21, 0x5F63AC69

	cm.push {ra, s0-s5}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0x25DE39B1
	bne x6, x1, fail

	li x6, 0x14B7F76D
	bne x6, x8, fail

	li x6, 0x5F7E002D
	bne x6, x9, fail

	li x6, 0x6345F75F
	bne x6, x18, fail

	li x6, 0x076B6103
	bne x6, x19, fail

	li x6, 0xFE174636
	bne x6, x20, fail

	li x6, 0x5F63AC69
	bne x6, x21, fail

test_28:
	li TESTNUM, 28

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x79969FCD
	li x8, 0x7A2E7E88
	li x9, 0x1F1ED8C6
	li x18, 0xD376AE65
	li x19, 0xBED20CBF
	li x20, 0x99BC2A83
	li x21, 0x7831C483

	cm.push {ra, s0-s5}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0x79969FCD
	bne x6, x1, fail

	li x6, 0x7A2E7E88
	bne x6, x8, fail

	li x6, 0x1F1ED8C6
	bne x6, x9, fail

	li x6, 0xD376AE65
	bne x6, x18, fail

	li x6, 0xBED20CBF
	bne x6, x19, fail

	li x6, 0x99BC2A83
	bne x6, x20, fail

	li x6, 0x7831C483
	bne x6, x21, fail

test_29:
	li TESTNUM, 29

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x7DDD3696
	li x8, 0x34467DFD
	li x9, 0x14FA92B9
	li x18, 0xC0CB2E57
	li x19, 0xE3E6DFAA
	li x20, 0xAD13425A
	li x21, 0x05A88889
	li x22, 0xD3F6AE4C

	cm.push {ra, s0-s6}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x7DDD3696
	bne x6, x1, fail

	li x6, 0x34467DFD
	bne x6, x8, fail

	li x6, 0x14FA92B9
	bne x6, x9, fail

	li x6, 0xC0CB2E57
	bne x6, x18, fail

	li x6, 0xE3E6DFAA
	bne x6, x19, fail

	li x6, 0xAD13425A
	bne x6, x20, fail

	li x6, 0x05A88889
	bne x6, x21, fail

	li x6, 0xD3F6AE4C
	bne x6, x22, fail

test_30:
	li TESTNUM, 30

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x854F51AE
	li x8, 0xB2454354
	li x9, 0xDE455CD2
	li x18, 0x29F510E1
	li x19, 0x80FBF387
	li x20, 0x87C99946
	li x21, 0xAF227767
	li x22, 0xED431E30

	cm.push {ra, s0-s6}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x854F51AE
	bne x6, x1, fail

	li x6, 0xB2454354
	bne x6, x8, fail

	li x6, 0xDE455CD2
	bne x6, x9, fail

	li x6, 0x29F510E1
	bne x6, x18, fail

	li x6, 0x80FBF387
	bne x6, x19, fail

	li x6, 0x87C99946
	bne x6, x20, fail

	li x6, 0xAF227767
	bne x6, x21, fail

	li x6, 0xED431E30
	bne x6, x22, fail

test_31:
	li TESTNUM, 31

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0xDC3BBFE2
	li x8, 0xBAFA07AB
	li x9, 0x92241556
	li x18, 0xA8BDF030
	li x19, 0x485807D9
	li x20, 0x9EDC2737
	li x21, 0xA6DF7163
	li x22, 0x11BFC337

	cm.push {ra, s0-s6}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0xDC3BBFE2
	bne x6, x1, fail

	li x6, 0xBAFA07AB
	bne x6, x8, fail

	li x6, 0x92241556
	bne x6, x9, fail

	li x6, 0xA8BDF030
	bne x6, x18, fail

	li x6, 0x485807D9
	bne x6, x19, fail

	li x6, 0x9EDC2737
	bne x6, x20, fail

	li x6, 0xA6DF7163
	bne x6, x21, fail

	li x6, 0x11BFC337
	bne x6, x22, fail

test_32:
	li TESTNUM, 32

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x7A831500
	li x8, 0x14BD13A2
	li x9, 0x5493BA1E
	li x18, 0x89111D4E
	li x19, 0x87740CCF
	li x20, 0x6811634E
	li x21, 0x47DA0DC3
	li x22, 0xDAC4BC91

	cm.push {ra, s0-s6}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0x7A831500
	bne x6, x1, fail

	li x6, 0x14BD13A2
	bne x6, x8, fail

	li x6, 0x5493BA1E
	bne x6, x9, fail

	li x6, 0x89111D4E
	bne x6, x18, fail

	li x6, 0x87740CCF
	bne x6, x19, fail

	li x6, 0x6811634E
	bne x6, x20, fail

	li x6, 0x47DA0DC3
	bne x6, x21, fail

	li x6, 0xDAC4BC91
	bne x6, x22, fail

test_33:
	li TESTNUM, 33

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x632ACADC
	li x8, 0x3119BB0C
	li x9, 0xF8A91EF3
	li x18, 0xADE5248B
	li x19, 0xEF28F393
	li x20, 0xF239378B
	li x21, 0xD8939CFD
	li x22, 0xE64CD435
	li x23, 0x9F18BC64

	cm.push {ra, s0-s7}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000

	cm.pop {ra, s0-s7}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x632ACADC
	bne x6, x1, fail

	li x6, 0x3119BB0C
	bne x6, x8, fail

	li x6, 0xF8A91EF3
	bne x6, x9, fail

	li x6, 0xADE5248B
	bne x6, x18, fail

	li x6, 0xEF28F393
	bne x6, x19, fail

	li x6, 0xF239378B
	bne x6, x20, fail

	li x6, 0xD8939CFD
	bne x6, x21, fail

	li x6, 0xE64CD435
	bne x6, x22, fail

	li x6, 0x9F18BC64
	bne x6, x23, fail

test_34:
	li TESTNUM, 34

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xB4C23EFD
	li x8, 0xEB3DFF5B
	li x9, 0x290A1038
	li x18, 0xF1387A7D
	li x19, 0xFA36C0D1
	li x20, 0xBFDC7B97
	li x21, 0x009EFCE9
	li x22, 0x10C465C4
	li x23, 0x06E752FB

	cm.push {ra, s0-s7}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000

	cm.pop {ra, s0-s7}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0xB4C23EFD
	bne x6, x1, fail

	li x6, 0xEB3DFF5B
	bne x6, x8, fail

	li x6, 0x290A1038
	bne x6, x9, fail

	li x6, 0xF1387A7D
	bne x6, x18, fail

	li x6, 0xFA36C0D1
	bne x6, x19, fail

	li x6, 0xBFDC7B97
	bne x6, x20, fail

	li x6, 0x009EFCE9
	bne x6, x21, fail

	li x6, 0x10C465C4
	bne x6, x22, fail

	li x6, 0x06E752FB
	bne x6, x23, fail

test_35:
	li TESTNUM, 35

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xB87C3C11
	li x8, 0x27A2A7D8
	li x9, 0x50045500
	li x18, 0xD20B4FF1
	li x19, 0xFEBB9C37
	li x20, 0x8AA25B45
	li x21, 0x3C3CA71A
	li x22, 0xE5C94EBF
	li x23, 0x77A9D2A7

	cm.push {ra, s0-s7}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000

	cm.pop {ra, s0-s7}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0xB87C3C11
	bne x6, x1, fail

	li x6, 0x27A2A7D8
	bne x6, x8, fail

	li x6, 0x50045500
	bne x6, x9, fail

	li x6, 0xD20B4FF1
	bne x6, x18, fail

	li x6, 0xFEBB9C37
	bne x6, x19, fail

	li x6, 0x8AA25B45
	bne x6, x20, fail

	li x6, 0x3C3CA71A
	bne x6, x21, fail

	li x6, 0xE5C94EBF
	bne x6, x22, fail

	li x6, 0x77A9D2A7
	bne x6, x23, fail

test_36:
	li TESTNUM, 36

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xB706A0C7
	li x8, 0x94F2ED1B
	li x9, 0x7C380D4A
	li x18, 0xB75F5C2B
	li x19, 0x9F57B2E4
	li x20, 0x2E43941A
	li x21, 0xAA0AF747
	li x22, 0xFD8FA26A
	li x23, 0x5F7EB671

	cm.push {ra, s0-s7}, -128

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000

	cm.pop {ra, s0-s7}, 128

	# Check sp
	bne sp, x5, fail

	li x6, 0xB706A0C7
	bne x6, x1, fail

	li x6, 0x94F2ED1B
	bne x6, x8, fail

	li x6, 0x7C380D4A
	bne x6, x9, fail

	li x6, 0xB75F5C2B
	bne x6, x18, fail

	li x6, 0x9F57B2E4
	bne x6, x19, fail

	li x6, 0x2E43941A
	bne x6, x20, fail

	li x6, 0xAA0AF747
	bne x6, x21, fail

	li x6, 0xFD8FA26A
	bne x6, x22, fail

	li x6, 0x5F7EB671
	bne x6, x23, fail

test_37:
	li TESTNUM, 37

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0xD70C0222
	li x8, 0x53A68F63
	li x9, 0x20A55D05
	li x18, 0x990D10A5
	li x19, 0x04A7930F
	li x20, 0x1B767CB7
	li x21, 0x7854DEEB
	li x22, 0xF19F7826
	li x23, 0x96BA1455
	li x24, 0xD4B46D6A

	cm.push {ra, s0-s8}, -80

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000

	cm.pop {ra, s0-s8}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0xD70C0222
	bne x6, x1, fail

	li x6, 0x53A68F63
	bne x6, x8, fail

	li x6, 0x20A55D05
	bne x6, x9, fail

	li x6, 0x990D10A5
	bne x6, x18, fail

	li x6, 0x04A7930F
	bne x6, x19, fail

	li x6, 0x1B767CB7
	bne x6, x20, fail

	li x6, 0x7854DEEB
	bne x6, x21, fail

	li x6, 0xF19F7826
	bne x6, x22, fail

	li x6, 0x96BA1455
	bne x6, x23, fail

	li x6, 0xD4B46D6A
	bne x6, x24, fail

test_38:
	li TESTNUM, 38

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x93159494
	li x8, 0x7500467E
	li x9, 0xE84B8991
	li x18, 0x301C68EC
	li x19, 0x86350C27
	li x20, 0xBC4E37D5
	li x21, 0x2C369C38
	li x22, 0xBE548DC2
	li x23, 0xBFF7DEE5
	li x24, 0xA93E1DB4

	cm.push {ra, s0-s8}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000

	cm.pop {ra, s0-s8}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0x93159494
	bne x6, x1, fail

	li x6, 0x7500467E
	bne x6, x8, fail

	li x6, 0xE84B8991
	bne x6, x9, fail

	li x6, 0x301C68EC
	bne x6, x18, fail

	li x6, 0x86350C27
	bne x6, x19, fail

	li x6, 0xBC4E37D5
	bne x6, x20, fail

	li x6, 0x2C369C38
	bne x6, x21, fail

	li x6, 0xBE548DC2
	bne x6, x22, fail

	li x6, 0xBFF7DEE5
	bne x6, x23, fail

	li x6, 0xA93E1DB4
	bne x6, x24, fail

test_39:
	li TESTNUM, 39

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0xAF6C6C22
	li x8, 0x27214766
	li x9, 0x94A2265A
	li x18, 0xAA58EB98
	li x19, 0xD79BC1B1
	li x20, 0x7CEACCC4
	li x21, 0xF64CA464
	li x22, 0x9FB2CC0E
	li x23, 0x84D35528
	li x24, 0xB3B1673C

	cm.push {ra, s0-s8}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000

	cm.pop {ra, s0-s8}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0xAF6C6C22
	bne x6, x1, fail

	li x6, 0x27214766
	bne x6, x8, fail

	li x6, 0x94A2265A
	bne x6, x9, fail

	li x6, 0xAA58EB98
	bne x6, x18, fail

	li x6, 0xD79BC1B1
	bne x6, x19, fail

	li x6, 0x7CEACCC4
	bne x6, x20, fail

	li x6, 0xF64CA464
	bne x6, x21, fail

	li x6, 0x9FB2CC0E
	bne x6, x22, fail

	li x6, 0x84D35528
	bne x6, x23, fail

	li x6, 0xB3B1673C
	bne x6, x24, fail

test_40:
	li TESTNUM, 40

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x6255D3B5
	li x8, 0xC5CB71E9
	li x9, 0x5BDA8F97
	li x18, 0xA022451D
	li x19, 0x06E4B20F
	li x20, 0xFCD2E7B0
	li x21, 0x6E4CB6BE
	li x22, 0xF69D5363
	li x23, 0x28CEDC06
	li x24, 0x686CD387

	cm.push {ra, s0-s8}, -128

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000

	cm.pop {ra, s0-s8}, 128

	# Check sp
	bne sp, x5, fail

	li x6, 0x6255D3B5
	bne x6, x1, fail

	li x6, 0xC5CB71E9
	bne x6, x8, fail

	li x6, 0x5BDA8F97
	bne x6, x9, fail

	li x6, 0xA022451D
	bne x6, x18, fail

	li x6, 0x06E4B20F
	bne x6, x19, fail

	li x6, 0xFCD2E7B0
	bne x6, x20, fail

	li x6, 0x6E4CB6BE
	bne x6, x21, fail

	li x6, 0xF69D5363
	bne x6, x22, fail

	li x6, 0x28CEDC06
	bne x6, x23, fail

	li x6, 0x686CD387
	bne x6, x24, fail

test_41:
	li TESTNUM, 41

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xFCD8F229
	li x8, 0x71E5CDAE
	li x9, 0x5077A231
	li x18, 0x99558921
	li x19, 0xE079FE60
	li x20, 0x86C2ADD6
	li x21, 0xC254B3D7
	li x22, 0x2C20231C
	li x23, 0x3AED44D5
	li x24, 0xA0AA618D
	li x25, 0xFD0C5105

	cm.push {ra, s0-s9}, -96

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000

	cm.pop {ra, s0-s9}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0xFCD8F229
	bne x6, x1, fail

	li x6, 0x71E5CDAE
	bne x6, x8, fail

	li x6, 0x5077A231
	bne x6, x9, fail

	li x6, 0x99558921
	bne x6, x18, fail

	li x6, 0xE079FE60
	bne x6, x19, fail

	li x6, 0x86C2ADD6
	bne x6, x20, fail

	li x6, 0xC254B3D7
	bne x6, x21, fail

	li x6, 0x2C20231C
	bne x6, x22, fail

	li x6, 0x3AED44D5
	bne x6, x23, fail

	li x6, 0xA0AA618D
	bne x6, x24, fail

	li x6, 0xFD0C5105
	bne x6, x25, fail

test_42:
	li TESTNUM, 42

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xF8F79AFE
	li x8, 0x07CE442E
	li x9, 0xC8B6EAC4
	li x18, 0x969B2E80
	li x19, 0x506B1E6D
	li x20, 0x07224103
	li x21, 0x9E72FD2E
	li x22, 0xE340B917
	li x23, 0x75EFFE98
	li x24, 0x473D9D4A
	li x25, 0x4E1C25A8

	cm.push {ra, s0-s9}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000

	cm.pop {ra, s0-s9}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0xF8F79AFE
	bne x6, x1, fail

	li x6, 0x07CE442E
	bne x6, x8, fail

	li x6, 0xC8B6EAC4
	bne x6, x9, fail

	li x6, 0x969B2E80
	bne x6, x18, fail

	li x6, 0x506B1E6D
	bne x6, x19, fail

	li x6, 0x07224103
	bne x6, x20, fail

	li x6, 0x9E72FD2E
	bne x6, x21, fail

	li x6, 0xE340B917
	bne x6, x22, fail

	li x6, 0x75EFFE98
	bne x6, x23, fail

	li x6, 0x473D9D4A
	bne x6, x24, fail

	li x6, 0x4E1C25A8
	bne x6, x25, fail

test_43:
	li TESTNUM, 43

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x80D5A02C
	li x8, 0x80C36FEE
	li x9, 0x22A1A7EE
	li x18, 0x762C6B1E
	li x19, 0xBC9DE155
	li x20, 0x86A8C516
	li x21, 0x078E6BEB
	li x22, 0xA0E029EB
	li x23, 0x147889E0
	li x24, 0x519D41B4
	li x25, 0x2F473876

	cm.push {ra, s0-s9}, -128

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000

	cm.pop {ra, s0-s9}, 128

	# Check sp
	bne sp, x5, fail

	li x6, 0x80D5A02C
	bne x6, x1, fail

	li x6, 0x80C36FEE
	bne x6, x8, fail

	li x6, 0x22A1A7EE
	bne x6, x9, fail

	li x6, 0x762C6B1E
	bne x6, x18, fail

	li x6, 0xBC9DE155
	bne x6, x19, fail

	li x6, 0x86A8C516
	bne x6, x20, fail

	li x6, 0x078E6BEB
	bne x6, x21, fail

	li x6, 0xA0E029EB
	bne x6, x22, fail

	li x6, 0x147889E0
	bne x6, x23, fail

	li x6, 0x519D41B4
	bne x6, x24, fail

	li x6, 0x2F473876
	bne x6, x25, fail

test_44:
	li TESTNUM, 44

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xF8809301
	li x8, 0xC8C242FF
	li x9, 0x79CC3F5E
	li x18, 0x90340E6C
	li x19, 0x47A00B6D
	li x20, 0xF55B1398
	li x21, 0x4EAD04A1
	li x22, 0x09799F86
	li x23, 0x06B264F7
	li x24, 0x44BB7FB8
	li x25, 0x58A0FF42

	cm.push {ra, s0-s9}, -144

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000

	cm.pop {ra, s0-s9}, 144

	# Check sp
	bne sp, x5, fail

	li x6, 0xF8809301
	bne x6, x1, fail

	li x6, 0xC8C242FF
	bne x6, x8, fail

	li x6, 0x79CC3F5E
	bne x6, x9, fail

	li x6, 0x90340E6C
	bne x6, x18, fail

	li x6, 0x47A00B6D
	bne x6, x19, fail

	li x6, 0xF55B1398
	bne x6, x20, fail

	li x6, 0x4EAD04A1
	bne x6, x21, fail

	li x6, 0x09799F86
	bne x6, x22, fail

	li x6, 0x06B264F7
	bne x6, x23, fail

	li x6, 0x44BB7FB8
	bne x6, x24, fail

	li x6, 0x58A0FF42
	bne x6, x25, fail

test_45:
	li TESTNUM, 45

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x5CB350DA
	li x8, 0x0ED567BD
	li x9, 0x0D9574D8
	li x18, 0xA22C9300
	li x19, 0x15248936
	li x20, 0x0CA7FEE2
	li x21, 0xBCF652A2
	li x22, 0x1DE5007A
	li x23, 0x2BB03202
	li x24, 0xEB39CB51
	li x25, 0x741FE16A
	li x26, 0x946292AE
	li x27, 0x015C1A78

	cm.push {ra, s0-s11}, -112

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000
	li x26, 0x00000000
	li x27, 0x00000000

	cm.pop {ra, s0-s11}, 112

	# Check sp
	bne sp, x5, fail

	li x6, 0x5CB350DA
	bne x6, x1, fail

	li x6, 0x0ED567BD
	bne x6, x8, fail

	li x6, 0x0D9574D8
	bne x6, x9, fail

	li x6, 0xA22C9300
	bne x6, x18, fail

	li x6, 0x15248936
	bne x6, x19, fail

	li x6, 0x0CA7FEE2
	bne x6, x20, fail

	li x6, 0xBCF652A2
	bne x6, x21, fail

	li x6, 0x1DE5007A
	bne x6, x22, fail

	li x6, 0x2BB03202
	bne x6, x23, fail

	li x6, 0xEB39CB51
	bne x6, x24, fail

	li x6, 0x741FE16A
	bne x6, x25, fail

	li x6, 0x946292AE
	bne x6, x26, fail

	li x6, 0x015C1A78
	bne x6, x27, fail

test_46:
	li TESTNUM, 46

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xD48E538A
	li x8, 0x6E6C448F
	li x9, 0xE2713706
	li x18, 0x8AA97E0E
	li x19, 0x05096B63
	li x20, 0x3219EF14
	li x21, 0xBDCC1D7C
	li x22, 0xEEB84975
	li x23, 0xB90DF2D6
	li x24, 0xA24697B6
	li x25, 0x6BB1B181
	li x26, 0x0228F8F8
	li x27, 0x938F500B

	cm.push {ra, s0-s11}, -128

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000
	li x26, 0x00000000
	li x27, 0x00000000

	cm.pop {ra, s0-s11}, 128

	# Check sp
	bne sp, x5, fail

	li x6, 0xD48E538A
	bne x6, x1, fail

	li x6, 0x6E6C448F
	bne x6, x8, fail

	li x6, 0xE2713706
	bne x6, x9, fail

	li x6, 0x8AA97E0E
	bne x6, x18, fail

	li x6, 0x05096B63
	bne x6, x19, fail

	li x6, 0x3219EF14
	bne x6, x20, fail

	li x6, 0xBDCC1D7C
	bne x6, x21, fail

	li x6, 0xEEB84975
	bne x6, x22, fail

	li x6, 0xB90DF2D6
	bne x6, x23, fail

	li x6, 0xA24697B6
	bne x6, x24, fail

	li x6, 0x6BB1B181
	bne x6, x25, fail

	li x6, 0x0228F8F8
	bne x6, x26, fail

	li x6, 0x938F500B
	bne x6, x27, fail

test_47:
	li TESTNUM, 47

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xB1317538
	li x8, 0x7A01DECE
	li x9, 0x3293D3DF
	li x18, 0x19BD1F59
	li x19, 0x2E1FCBF1
	li x20, 0x370818A3
	li x21, 0xE742A250
	li x22, 0xA8C80417
	li x23, 0xDE451595
	li x24, 0x1BDB7C99
	li x25, 0x368BA7AB
	li x26, 0xA45AA3B2
	li x27, 0x1BDFA956

	cm.push {ra, s0-s11}, -144

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000
	li x26, 0x00000000
	li x27, 0x00000000

	cm.pop {ra, s0-s11}, 144

	# Check sp
	bne sp, x5, fail

	li x6, 0xB1317538
	bne x6, x1, fail

	li x6, 0x7A01DECE
	bne x6, x8, fail

	li x6, 0x3293D3DF
	bne x6, x9, fail

	li x6, 0x19BD1F59
	bne x6, x18, fail

	li x6, 0x2E1FCBF1
	bne x6, x19, fail

	li x6, 0x370818A3
	bne x6, x20, fail

	li x6, 0xE742A250
	bne x6, x21, fail

	li x6, 0xA8C80417
	bne x6, x22, fail

	li x6, 0xDE451595
	bne x6, x23, fail

	li x6, 0x1BDB7C99
	bne x6, x24, fail

	li x6, 0x368BA7AB
	bne x6, x25, fail

	li x6, 0xA45AA3B2
	bne x6, x26, fail

	li x6, 0x1BDFA956
	bne x6, x27, fail

test_48:
	li TESTNUM, 48

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x064296B2
	li x8, 0xD049BC38
	li x9, 0x754E0BDE
	li x18, 0x4707D00C
	li x19, 0x85C684C1
	li x20, 0x7BAB0E36
	li x21, 0x4670CE27
	li x22, 0x77EE6B4F
	li x23, 0x73E3D0C0
	li x24, 0x4EA00A2C
	li x25, 0x109940EB
	li x26, 0xC6C7B4F9
	li x27, 0x557427CC

	cm.push {ra, s0-s11}, -160

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000
	li x23, 0x00000000
	li x24, 0x00000000
	li x25, 0x00000000
	li x26, 0x00000000
	li x27, 0x00000000

	cm.pop {ra, s0-s11}, 160

	# Check sp
	bne sp, x5, fail

	li x6, 0x064296B2
	bne x6, x1, fail

	li x6, 0xD049BC38
	bne x6, x8, fail

	li x6, 0x754E0BDE
	bne x6, x9, fail

	li x6, 0x4707D00C
	bne x6, x18, fail

	li x6, 0x85C684C1
	bne x6, x19, fail

	li x6, 0x7BAB0E36
	bne x6, x20, fail

	li x6, 0x4670CE27
	bne x6, x21, fail

	li x6, 0x77EE6B4F
	bne x6, x22, fail

	li x6, 0x73E3D0C0
	bne x6, x23, fail

	li x6, 0x4EA00A2C
	bne x6, x24, fail

	li x6, 0x109940EB
	bne x6, x25, fail

	li x6, 0xC6C7B4F9
	bne x6, x26, fail

	li x6, 0x557427CC
	bne x6, x27, fail
    
	RVTEST_PASS

fail:
    RVTEST_FAIL

RVTEST_CODE_END

    .data
RVTEST_DATA_BEGIN

    .align 8
tdat:
    .space 256               # Reserve 256 bytes
tdat_end:

RVTEST_DATA_END