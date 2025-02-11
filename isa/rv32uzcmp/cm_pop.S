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
	li x1, 0x16AD939A

	cm.push {ra}, -16

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0x16AD939A
	bne x6, x1, fail

test_2:
	li TESTNUM, 2

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0xF75B0569

	cm.push {ra}, -32

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xF75B0569
	bne x6, x1, fail

test_3:
	li TESTNUM, 3

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x50242AB7

	cm.push {ra}, -48

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x50242AB7
	bne x6, x1, fail

test_4:
	li TESTNUM, 4

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x512BA759

	cm.push {ra}, -64

	# Set registers to 0
	li x1, 0x00000000

	cm.pop {ra}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x512BA759
	bne x6, x1, fail

test_5:
	li TESTNUM, 5

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x09067312
	li x8, 0x19A8A2B5

	cm.push {ra, s0}, -16

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0x09067312
	bne x6, x1, fail

	li x6, 0x19A8A2B5
	bne x6, x8, fail

test_6:
	li TESTNUM, 6

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x97E16156
	li x8, 0x1AEB4C1E

	cm.push {ra, s0}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x97E16156
	bne x6, x1, fail

	li x6, 0x1AEB4C1E
	bne x6, x8, fail

test_7:
	li TESTNUM, 7

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x0D98C4B6
	li x8, 0xF679E83F

	cm.push {ra, s0}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x0D98C4B6
	bne x6, x1, fail

	li x6, 0xF679E83F
	bne x6, x8, fail

test_8:
	li TESTNUM, 8

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x0D554278
	li x8, 0x5A226F2F

	cm.push {ra, s0}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000

	cm.pop {ra, s0}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x0D554278
	bne x6, x1, fail

	li x6, 0x5A226F2F
	bne x6, x8, fail

test_9:
	li TESTNUM, 9

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0xACD591D4
	li x8, 0x0AAA0894
	li x9, 0xCAA28471

	cm.push {ra, s0-s1}, -16

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0xACD591D4
	bne x6, x1, fail

	li x6, 0x0AAA0894
	bne x6, x8, fail

	li x6, 0xCAA28471
	bne x6, x9, fail

test_10:
	li TESTNUM, 10

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0xD5D50602
	li x8, 0xC0D8C565
	li x9, 0x3ED75104

	cm.push {ra, s0-s1}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xD5D50602
	bne x6, x1, fail

	li x6, 0xC0D8C565
	bne x6, x8, fail

	li x6, 0x3ED75104
	bne x6, x9, fail

test_11:
	li TESTNUM, 11

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x3FA73D6C
	li x8, 0xA15DD866
	li x9, 0x3BDCE457

	cm.push {ra, s0-s1}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x3FA73D6C
	bne x6, x1, fail

	li x6, 0xA15DD866
	bne x6, x8, fail

	li x6, 0x3BDCE457
	bne x6, x9, fail

test_12:
	li TESTNUM, 12

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x2AD2075B
	li x8, 0xF66D4F6F
	li x9, 0x266C9C0E

	cm.push {ra, s0-s1}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000

	cm.pop {ra, s0-s1}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x2AD2075B
	bne x6, x1, fail

	li x6, 0xF66D4F6F
	bne x6, x8, fail

	li x6, 0x266C9C0E
	bne x6, x9, fail

test_13:
	li TESTNUM, 13

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x0306EFD6
	li x8, 0x67AC9A9C
	li x9, 0xD008EE32
	li x18, 0x77D74A4C

	cm.push {ra, s0-s2}, -16

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 16

	# Check sp
	bne sp, x5, fail

	li x6, 0x0306EFD6
	bne x6, x1, fail

	li x6, 0x67AC9A9C
	bne x6, x8, fail

	li x6, 0xD008EE32
	bne x6, x9, fail

	li x6, 0x77D74A4C
	bne x6, x18, fail

test_14:
	li TESTNUM, 14

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xCDA0E177
	li x8, 0xACC7B93F
	li x9, 0xD05D9113
	li x18, 0x0C1FEB35

	cm.push {ra, s0-s2}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xCDA0E177
	bne x6, x1, fail

	li x6, 0xACC7B93F
	bne x6, x8, fail

	li x6, 0xD05D9113
	bne x6, x9, fail

	li x6, 0x0C1FEB35
	bne x6, x18, fail

test_15:
	li TESTNUM, 15

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x73A15413
	li x8, 0xAA519FBA
	li x9, 0x82BE9A98
	li x18, 0xFE054F1D

	cm.push {ra, s0-s2}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x73A15413
	bne x6, x1, fail

	li x6, 0xAA519FBA
	bne x6, x8, fail

	li x6, 0x82BE9A98
	bne x6, x9, fail

	li x6, 0xFE054F1D
	bne x6, x18, fail

test_16:
	li TESTNUM, 16

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xECCB50F5
	li x8, 0x073A3CC4
	li x9, 0xD8640BD8
	li x18, 0x77C97E88

	cm.push {ra, s0-s2}, -64

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000

	cm.pop {ra, s0-s2}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0xECCB50F5
	bne x6, x1, fail

	li x6, 0x073A3CC4
	bne x6, x8, fail

	li x6, 0xD8640BD8
	bne x6, x9, fail

	li x6, 0x77C97E88
	bne x6, x18, fail

test_17:
	li TESTNUM, 17

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x66139064
	li x8, 0xD4DD9E58
	li x9, 0xDA6F9607
	li x18, 0x4FA8A265
	li x19, 0x2FBC0FEC

	cm.push {ra, s0-s3}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000

	cm.pop {ra, s0-s3}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x66139064
	bne x6, x1, fail

	li x6, 0xD4DD9E58
	bne x6, x8, fail

	li x6, 0xDA6F9607
	bne x6, x9, fail

	li x6, 0x4FA8A265
	bne x6, x18, fail

	li x6, 0x2FBC0FEC
	bne x6, x19, fail

test_18:
	li TESTNUM, 18

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x3D2C77C3
	li x8, 0xB8C1E0C9
	li x9, 0x88A343EA
	li x18, 0x7935CD77
	li x19, 0xECFC1A04

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

	li x6, 0x3D2C77C3
	bne x6, x1, fail

	li x6, 0xB8C1E0C9
	bne x6, x8, fail

	li x6, 0x88A343EA
	bne x6, x9, fail

	li x6, 0x7935CD77
	bne x6, x18, fail

	li x6, 0xECFC1A04
	bne x6, x19, fail

test_19:
	li TESTNUM, 19

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x9F145A6D
	li x8, 0xF3E7087D
	li x9, 0x5ADAE7B7
	li x18, 0xB29C66D9
	li x19, 0xD7754342

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

	li x6, 0x9F145A6D
	bne x6, x1, fail

	li x6, 0xF3E7087D
	bne x6, x8, fail

	li x6, 0x5ADAE7B7
	bne x6, x9, fail

	li x6, 0xB29C66D9
	bne x6, x18, fail

	li x6, 0xD7754342
	bne x6, x19, fail

test_20:
	li TESTNUM, 20

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0xAF25C3B0
	li x8, 0x6F75598D
	li x9, 0xB598C79A
	li x18, 0x263A55D0
	li x19, 0x74DE5011

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

	li x6, 0xAF25C3B0
	bne x6, x1, fail

	li x6, 0x6F75598D
	bne x6, x8, fail

	li x6, 0xB598C79A
	bne x6, x9, fail

	li x6, 0x263A55D0
	bne x6, x18, fail

	li x6, 0x74DE5011
	bne x6, x19, fail

test_21:
	li TESTNUM, 21

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x127FEDED
	li x8, 0x84FDEB5E
	li x9, 0x155E6D91
	li x18, 0x57B93788
	li x19, 0xF439BEEB
	li x20, 0xA3FD10A1

	cm.push {ra, s0-s4}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000

	cm.pop {ra, s0-s4}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x127FEDED
	bne x6, x1, fail

	li x6, 0x84FDEB5E
	bne x6, x8, fail

	li x6, 0x155E6D91
	bne x6, x9, fail

	li x6, 0x57B93788
	bne x6, x18, fail

	li x6, 0xF439BEEB
	bne x6, x19, fail

	li x6, 0xA3FD10A1
	bne x6, x20, fail

test_22:
	li TESTNUM, 22

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x97D22F73
	li x8, 0x9102167A
	li x9, 0x7371FDA0
	li x18, 0x589E8FC7
	li x19, 0x85F43AAA
	li x20, 0xE6BAA5AB

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

	li x6, 0x97D22F73
	bne x6, x1, fail

	li x6, 0x9102167A
	bne x6, x8, fail

	li x6, 0x7371FDA0
	bne x6, x9, fail

	li x6, 0x589E8FC7
	bne x6, x18, fail

	li x6, 0x85F43AAA
	bne x6, x19, fail

	li x6, 0xE6BAA5AB
	bne x6, x20, fail

test_23:
	li TESTNUM, 23

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0xE1087865
	li x8, 0x7E5B4998
	li x9, 0x6E2B7298
	li x18, 0x1EF91B5E
	li x19, 0xF0E9B4F5
	li x20, 0x504DF010

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

	li x6, 0xE1087865
	bne x6, x1, fail

	li x6, 0x7E5B4998
	bne x6, x8, fail

	li x6, 0x6E2B7298
	bne x6, x9, fail

	li x6, 0x1EF91B5E
	bne x6, x18, fail

	li x6, 0xF0E9B4F5
	bne x6, x19, fail

	li x6, 0x504DF010
	bne x6, x20, fail

test_24:
	li TESTNUM, 24

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x07B6D5F0
	li x8, 0xA4DC5FC8
	li x9, 0x2AFEE748
	li x18, 0x8881B233
	li x19, 0x3DDC3791
	li x20, 0xDBE08719

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

	li x6, 0x07B6D5F0
	bne x6, x1, fail

	li x6, 0xA4DC5FC8
	bne x6, x8, fail

	li x6, 0x2AFEE748
	bne x6, x9, fail

	li x6, 0x8881B233
	bne x6, x18, fail

	li x6, 0x3DDC3791
	bne x6, x19, fail

	li x6, 0xDBE08719
	bne x6, x20, fail

test_25:
	li TESTNUM, 25

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x1E22B8A7
	li x8, 0x7AE3698D
	li x9, 0x8F64E668
	li x18, 0xBC6C74E6
	li x19, 0x14378867
	li x20, 0xB2B8063E
	li x21, 0x8D06D434

	cm.push {ra, s0-s5}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0x1E22B8A7
	bne x6, x1, fail

	li x6, 0x7AE3698D
	bne x6, x8, fail

	li x6, 0x8F64E668
	bne x6, x9, fail

	li x6, 0xBC6C74E6
	bne x6, x18, fail

	li x6, 0x14378867
	bne x6, x19, fail

	li x6, 0xB2B8063E
	bne x6, x20, fail

	li x6, 0x8D06D434
	bne x6, x21, fail

test_26:
	li TESTNUM, 26

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xDE88D006
	li x8, 0xCA47E87B
	li x9, 0x20E5E7BD
	li x18, 0x0DB0FABD
	li x19, 0xD80371EA
	li x20, 0xAE5DDA05
	li x21, 0xEDCFC702

	cm.push {ra, s0-s5}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000

	cm.pop {ra, s0-s5}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0xDE88D006
	bne x6, x1, fail

	li x6, 0xCA47E87B
	bne x6, x8, fail

	li x6, 0x20E5E7BD
	bne x6, x9, fail

	li x6, 0x0DB0FABD
	bne x6, x18, fail

	li x6, 0xD80371EA
	bne x6, x19, fail

	li x6, 0xAE5DDA05
	bne x6, x20, fail

	li x6, 0xEDCFC702
	bne x6, x21, fail

test_27:
	li TESTNUM, 27

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xE8E134F7
	li x8, 0xD5238A99
	li x9, 0xCFE6DACB
	li x18, 0x3205B1B2
	li x19, 0xD0068812
	li x20, 0x96FDFAC7
	li x21, 0xD07FE74C

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

	li x6, 0xE8E134F7
	bne x6, x1, fail

	li x6, 0xD5238A99
	bne x6, x8, fail

	li x6, 0xCFE6DACB
	bne x6, x9, fail

	li x6, 0x3205B1B2
	bne x6, x18, fail

	li x6, 0xD0068812
	bne x6, x19, fail

	li x6, 0x96FDFAC7
	bne x6, x20, fail

	li x6, 0xD07FE74C
	bne x6, x21, fail

test_28:
	li TESTNUM, 28

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x7D62192E
	li x8, 0xDCCA6DCF
	li x9, 0xDDD7D588
	li x18, 0x8D165753
	li x19, 0xCE2C53D4
	li x20, 0xBE0F36ED
	li x21, 0x81C97ED7

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

	li x6, 0x7D62192E
	bne x6, x1, fail

	li x6, 0xDCCA6DCF
	bne x6, x8, fail

	li x6, 0xDDD7D588
	bne x6, x9, fail

	li x6, 0x8D165753
	bne x6, x18, fail

	li x6, 0xCE2C53D4
	bne x6, x19, fail

	li x6, 0xBE0F36ED
	bne x6, x20, fail

	li x6, 0x81C97ED7
	bne x6, x21, fail

test_29:
	li TESTNUM, 29

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0xDB3E834A
	li x8, 0x2FAC53F7
	li x9, 0x12898AB3
	li x18, 0x0F18BD2D
	li x19, 0xB59B4B3E
	li x20, 0x0C7D2F82
	li x21, 0x01C220C3
	li x22, 0x3CC6D5BA

	cm.push {ra, s0-s6}, -32

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 32

	# Check sp
	bne sp, x5, fail

	li x6, 0xDB3E834A
	bne x6, x1, fail

	li x6, 0x2FAC53F7
	bne x6, x8, fail

	li x6, 0x12898AB3
	bne x6, x9, fail

	li x6, 0x0F18BD2D
	bne x6, x18, fail

	li x6, 0xB59B4B3E
	bne x6, x19, fail

	li x6, 0x0C7D2F82
	bne x6, x20, fail

	li x6, 0x01C220C3
	bne x6, x21, fail

	li x6, 0x3CC6D5BA
	bne x6, x22, fail

test_30:
	li TESTNUM, 30

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x8370F4A8
	li x8, 0x8A89E60C
	li x9, 0x94FBC16C
	li x18, 0x034997EB
	li x19, 0x211081D3
	li x20, 0x9C7AEBA6
	li x21, 0x69199D23
	li x22, 0x4551EB6B

	cm.push {ra, s0-s6}, -48

	# Set registers to 0
	li x1, 0x00000000
	li x8, 0x00000000
	li x9, 0x00000000
	li x18, 0x00000000
	li x19, 0x00000000
	li x20, 0x00000000
	li x21, 0x00000000
	li x22, 0x00000000

	cm.pop {ra, s0-s6}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x8370F4A8
	bne x6, x1, fail

	li x6, 0x8A89E60C
	bne x6, x8, fail

	li x6, 0x94FBC16C
	bne x6, x9, fail

	li x6, 0x034997EB
	bne x6, x18, fail

	li x6, 0x211081D3
	bne x6, x19, fail

	li x6, 0x9C7AEBA6
	bne x6, x20, fail

	li x6, 0x69199D23
	bne x6, x21, fail

	li x6, 0x4551EB6B
	bne x6, x22, fail

test_31:
	li TESTNUM, 31

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x67CDB9CC
	li x8, 0x52947702
	li x9, 0x16702670
	li x18, 0x653830BF
	li x19, 0x6A6A9D66
	li x20, 0x3ED307E6
	li x21, 0xCD5F5EB8
	li x22, 0xCA5BF715

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

	li x6, 0x67CDB9CC
	bne x6, x1, fail

	li x6, 0x52947702
	bne x6, x8, fail

	li x6, 0x16702670
	bne x6, x9, fail

	li x6, 0x653830BF
	bne x6, x18, fail

	li x6, 0x6A6A9D66
	bne x6, x19, fail

	li x6, 0x3ED307E6
	bne x6, x20, fail

	li x6, 0xCD5F5EB8
	bne x6, x21, fail

	li x6, 0xCA5BF715
	bne x6, x22, fail

test_32:
	li TESTNUM, 32

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x8E80A380
	li x8, 0xDAC832A4
	li x9, 0x8EBE5816
	li x18, 0x647248EA
	li x19, 0x99FCD98B
	li x20, 0xE6139496
	li x21, 0xACCA85F9
	li x22, 0x62483E20

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

	li x6, 0x8E80A380
	bne x6, x1, fail

	li x6, 0xDAC832A4
	bne x6, x8, fail

	li x6, 0x8EBE5816
	bne x6, x9, fail

	li x6, 0x647248EA
	bne x6, x18, fail

	li x6, 0x99FCD98B
	bne x6, x19, fail

	li x6, 0xE6139496
	bne x6, x20, fail

	li x6, 0xACCA85F9
	bne x6, x21, fail

	li x6, 0x62483E20
	bne x6, x22, fail

test_33:
	li TESTNUM, 33

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x88130444
	li x8, 0x30644094
	li x9, 0xF050B0DB
	li x18, 0x092D4261
	li x19, 0x8A86CC25
	li x20, 0x4188D378
	li x21, 0x95E74FE0
	li x22, 0xB2D0EDC7
	li x23, 0xFE9ABCEC

	cm.push {ra, s0-s7}, -48

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

	cm.pop {ra, s0-s7}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x88130444
	bne x6, x1, fail

	li x6, 0x30644094
	bne x6, x8, fail

	li x6, 0xF050B0DB
	bne x6, x9, fail

	li x6, 0x092D4261
	bne x6, x18, fail

	li x6, 0x8A86CC25
	bne x6, x19, fail

	li x6, 0x4188D378
	bne x6, x20, fail

	li x6, 0x95E74FE0
	bne x6, x21, fail

	li x6, 0xB2D0EDC7
	bne x6, x22, fail

	li x6, 0xFE9ABCEC
	bne x6, x23, fail

test_34:
	li TESTNUM, 34

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x7E173163
	li x8, 0x9CF5418D
	li x9, 0x15723F12
	li x18, 0x51860016
	li x19, 0x4818875F
	li x20, 0x76737A70
	li x21, 0x4144E5DF
	li x22, 0x596574A7
	li x23, 0x9DA4CEE5

	cm.push {ra, s0-s7}, -64

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

	cm.pop {ra, s0-s7}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0x7E173163
	bne x6, x1, fail

	li x6, 0x9CF5418D
	bne x6, x8, fail

	li x6, 0x15723F12
	bne x6, x9, fail

	li x6, 0x51860016
	bne x6, x18, fail

	li x6, 0x4818875F
	bne x6, x19, fail

	li x6, 0x76737A70
	bne x6, x20, fail

	li x6, 0x4144E5DF
	bne x6, x21, fail

	li x6, 0x596574A7
	bne x6, x22, fail

	li x6, 0x9DA4CEE5
	bne x6, x23, fail

test_35:
	li TESTNUM, 35

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x3CFB08EE
	li x8, 0x6A862E2C
	li x9, 0x2B3A3576
	li x18, 0x5A477144
	li x19, 0xA639FF08
	li x20, 0x2B5BB384
	li x21, 0x34E47A80
	li x22, 0xFA284425
	li x23, 0x9670378F

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

	li x6, 0x3CFB08EE
	bne x6, x1, fail

	li x6, 0x6A862E2C
	bne x6, x8, fail

	li x6, 0x2B3A3576
	bne x6, x9, fail

	li x6, 0x5A477144
	bne x6, x18, fail

	li x6, 0xA639FF08
	bne x6, x19, fail

	li x6, 0x2B5BB384
	bne x6, x20, fail

	li x6, 0x34E47A80
	bne x6, x21, fail

	li x6, 0xFA284425
	bne x6, x22, fail

	li x6, 0x9670378F
	bne x6, x23, fail

test_36:
	li TESTNUM, 36

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xBF252771
	li x8, 0x24718894
	li x9, 0x823AABD9
	li x18, 0x1BEAD6CF
	li x19, 0xFC8EDA8A
	li x20, 0x2A57E3FA
	li x21, 0x116A7DDE
	li x22, 0x44665154
	li x23, 0xAE1F4C26

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

	li x6, 0xBF252771
	bne x6, x1, fail

	li x6, 0x24718894
	bne x6, x8, fail

	li x6, 0x823AABD9
	bne x6, x9, fail

	li x6, 0x1BEAD6CF
	bne x6, x18, fail

	li x6, 0xFC8EDA8A
	bne x6, x19, fail

	li x6, 0x2A57E3FA
	bne x6, x20, fail

	li x6, 0x116A7DDE
	bne x6, x21, fail

	li x6, 0x44665154
	bne x6, x22, fail

	li x6, 0xAE1F4C26
	bne x6, x23, fail

test_37:
	li TESTNUM, 37

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x47534AD1
	li x8, 0xA044CAD6
	li x9, 0x0B7E12A3
	li x18, 0x328E99B8
	li x19, 0x259BA948
	li x20, 0x3250F041
	li x21, 0x32A20D83
	li x22, 0xD98B085B
	li x23, 0x642BDC32
	li x24, 0xA26FD14F

	cm.push {ra, s0-s8}, -48

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

	cm.pop {ra, s0-s8}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x47534AD1
	bne x6, x1, fail

	li x6, 0xA044CAD6
	bne x6, x8, fail

	li x6, 0x0B7E12A3
	bne x6, x9, fail

	li x6, 0x328E99B8
	bne x6, x18, fail

	li x6, 0x259BA948
	bne x6, x19, fail

	li x6, 0x3250F041
	bne x6, x20, fail

	li x6, 0x32A20D83
	bne x6, x21, fail

	li x6, 0xD98B085B
	bne x6, x22, fail

	li x6, 0x642BDC32
	bne x6, x23, fail

	li x6, 0xA26FD14F
	bne x6, x24, fail

test_38:
	li TESTNUM, 38

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0xC1EA38EE
	li x8, 0xAF65DDE2
	li x9, 0xBF25D9FC
	li x18, 0x7534C394
	li x19, 0x4BB1534B
	li x20, 0xC0D67ECC
	li x21, 0x1A3EFD6C
	li x22, 0xA29A47A9
	li x23, 0x51849723
	li x24, 0x2AF2BB5E

	cm.push {ra, s0-s8}, -64

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

	cm.pop {ra, s0-s8}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0xC1EA38EE
	bne x6, x1, fail

	li x6, 0xAF65DDE2
	bne x6, x8, fail

	li x6, 0xBF25D9FC
	bne x6, x9, fail

	li x6, 0x7534C394
	bne x6, x18, fail

	li x6, 0x4BB1534B
	bne x6, x19, fail

	li x6, 0xC0D67ECC
	bne x6, x20, fail

	li x6, 0x1A3EFD6C
	bne x6, x21, fail

	li x6, 0xA29A47A9
	bne x6, x22, fail

	li x6, 0x51849723
	bne x6, x23, fail

	li x6, 0x2AF2BB5E
	bne x6, x24, fail

test_39:
	li TESTNUM, 39

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0xDFD778F0
	li x8, 0x6CD36138
	li x9, 0xC2DF5042
	li x18, 0x8689B2B6
	li x19, 0x6173ECD8
	li x20, 0x4039FFDA
	li x21, 0x931B654F
	li x22, 0x50007185
	li x23, 0xB33240BF
	li x24, 0x3884B659

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

	li x6, 0xDFD778F0
	bne x6, x1, fail

	li x6, 0x6CD36138
	bne x6, x8, fail

	li x6, 0xC2DF5042
	bne x6, x9, fail

	li x6, 0x8689B2B6
	bne x6, x18, fail

	li x6, 0x6173ECD8
	bne x6, x19, fail

	li x6, 0x4039FFDA
	bne x6, x20, fail

	li x6, 0x931B654F
	bne x6, x21, fail

	li x6, 0x50007185
	bne x6, x22, fail

	li x6, 0xB33240BF
	bne x6, x23, fail

	li x6, 0x3884B659
	bne x6, x24, fail

test_40:
	li TESTNUM, 40

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x409E5C9E
	li x8, 0x762061F7
	li x9, 0x4C49ACAD
	li x18, 0x7C059E67
	li x19, 0xCA569C81
	li x20, 0xA42E106A
	li x21, 0xBBB0DE36
	li x22, 0xAFE17630
	li x23, 0x488C2F01
	li x24, 0xD7C73C8E

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

	li x6, 0x409E5C9E
	bne x6, x1, fail

	li x6, 0x762061F7
	bne x6, x8, fail

	li x6, 0x4C49ACAD
	bne x6, x9, fail

	li x6, 0x7C059E67
	bne x6, x18, fail

	li x6, 0xCA569C81
	bne x6, x19, fail

	li x6, 0xA42E106A
	bne x6, x20, fail

	li x6, 0xBBB0DE36
	bne x6, x21, fail

	li x6, 0xAFE17630
	bne x6, x22, fail

	li x6, 0x488C2F01
	bne x6, x23, fail

	li x6, 0xD7C73C8E
	bne x6, x24, fail

test_41:
	li TESTNUM, 41

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x61895D83
	li x8, 0x0EF24FEA
	li x9, 0x76A878D9
	li x18, 0xAE55D323
	li x19, 0xC2281526
	li x20, 0x58C9FCE6
	li x21, 0xE592FE63
	li x22, 0xD8A44AF7
	li x23, 0xCCCB32A5
	li x24, 0x709AC14C
	li x25, 0xEAC6E9F1

	cm.push {ra, s0-s9}, -48

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

	cm.pop {ra, s0-s9}, 48

	# Check sp
	bne sp, x5, fail

	li x6, 0x61895D83
	bne x6, x1, fail

	li x6, 0x0EF24FEA
	bne x6, x8, fail

	li x6, 0x76A878D9
	bne x6, x9, fail

	li x6, 0xAE55D323
	bne x6, x18, fail

	li x6, 0xC2281526
	bne x6, x19, fail

	li x6, 0x58C9FCE6
	bne x6, x20, fail

	li x6, 0xE592FE63
	bne x6, x21, fail

	li x6, 0xD8A44AF7
	bne x6, x22, fail

	li x6, 0xCCCB32A5
	bne x6, x23, fail

	li x6, 0x709AC14C
	bne x6, x24, fail

	li x6, 0xEAC6E9F1
	bne x6, x25, fail

test_42:
	li TESTNUM, 42

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xCA1E71E6
	li x8, 0x5A9975AE
	li x9, 0x93A46720
	li x18, 0xBBED92D1
	li x19, 0x4CD7AC24
	li x20, 0x472F6653
	li x21, 0x243607C5
	li x22, 0xBBDF6364
	li x23, 0x30C43D76
	li x24, 0x9C79DD96
	li x25, 0xBF31756D

	cm.push {ra, s0-s9}, -64

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

	cm.pop {ra, s0-s9}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0xCA1E71E6
	bne x6, x1, fail

	li x6, 0x5A9975AE
	bne x6, x8, fail

	li x6, 0x93A46720
	bne x6, x9, fail

	li x6, 0xBBED92D1
	bne x6, x18, fail

	li x6, 0x4CD7AC24
	bne x6, x19, fail

	li x6, 0x472F6653
	bne x6, x20, fail

	li x6, 0x243607C5
	bne x6, x21, fail

	li x6, 0xBBDF6364
	bne x6, x22, fail

	li x6, 0x30C43D76
	bne x6, x23, fail

	li x6, 0x9C79DD96
	bne x6, x24, fail

	li x6, 0xBF31756D
	bne x6, x25, fail

test_43:
	li TESTNUM, 43

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x3A3C0A37
	li x8, 0x208191A9
	li x9, 0x404E8B33
	li x18, 0x5D9C9AAF
	li x19, 0xBC2556BC
	li x20, 0xA9E946BB
	li x21, 0xBD9B143A
	li x22, 0xC9F3A3D7
	li x23, 0xD8B2B3B8
	li x24, 0xBA78810F
	li x25, 0x3D263D82

	cm.push {ra, s0-s9}, -80

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

	cm.pop {ra, s0-s9}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0x3A3C0A37
	bne x6, x1, fail

	li x6, 0x208191A9
	bne x6, x8, fail

	li x6, 0x404E8B33
	bne x6, x9, fail

	li x6, 0x5D9C9AAF
	bne x6, x18, fail

	li x6, 0xBC2556BC
	bne x6, x19, fail

	li x6, 0xA9E946BB
	bne x6, x20, fail

	li x6, 0xBD9B143A
	bne x6, x21, fail

	li x6, 0xC9F3A3D7
	bne x6, x22, fail

	li x6, 0xD8B2B3B8
	bne x6, x23, fail

	li x6, 0xBA78810F
	bne x6, x24, fail

	li x6, 0x3D263D82
	bne x6, x25, fail

test_44:
	li TESTNUM, 44

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x288C8E06
	li x8, 0x2464DE6B
	li x9, 0x97A3BBCF
	li x18, 0xFD48DDCB
	li x19, 0xE9692AC0
	li x20, 0x7A1718B4
	li x21, 0x2774B8AF
	li x22, 0x9A9A4768
	li x23, 0xFD714CC6
	li x24, 0x08781277
	li x25, 0x051AA71F

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

	li x6, 0x288C8E06
	bne x6, x1, fail

	li x6, 0x2464DE6B
	bne x6, x8, fail

	li x6, 0x97A3BBCF
	bne x6, x9, fail

	li x6, 0xFD48DDCB
	bne x6, x18, fail

	li x6, 0xE9692AC0
	bne x6, x19, fail

	li x6, 0x7A1718B4
	bne x6, x20, fail

	li x6, 0x2774B8AF
	bne x6, x21, fail

	li x6, 0x9A9A4768
	bne x6, x22, fail

	li x6, 0xFD714CC6
	bne x6, x23, fail

	li x6, 0x08781277
	bne x6, x24, fail

	li x6, 0x051AA71F
	bne x6, x25, fail

test_45:
	li TESTNUM, 45

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xE63FBFDD
	li x8, 0x8D2814C2
	li x9, 0x0B62839F
	li x18, 0xDD9150E9
	li x19, 0x95BAA0A8
	li x20, 0x584028CF
	li x21, 0x32FEB000
	li x22, 0x6580194E
	li x23, 0x599275B3
	li x24, 0x33033E57
	li x25, 0xBE16ABD9
	li x26, 0x1CAF3119
	li x27, 0x405980B3

	cm.push {ra, s0-s11}, -64

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

	cm.pop {ra, s0-s11}, 64

	# Check sp
	bne sp, x5, fail

	li x6, 0xE63FBFDD
	bne x6, x1, fail

	li x6, 0x8D2814C2
	bne x6, x8, fail

	li x6, 0x0B62839F
	bne x6, x9, fail

	li x6, 0xDD9150E9
	bne x6, x18, fail

	li x6, 0x95BAA0A8
	bne x6, x19, fail

	li x6, 0x584028CF
	bne x6, x20, fail

	li x6, 0x32FEB000
	bne x6, x21, fail

	li x6, 0x6580194E
	bne x6, x22, fail

	li x6, 0x599275B3
	bne x6, x23, fail

	li x6, 0x33033E57
	bne x6, x24, fail

	li x6, 0xBE16ABD9
	bne x6, x25, fail

	li x6, 0x1CAF3119
	bne x6, x26, fail

	li x6, 0x405980B3
	bne x6, x27, fail

test_46:
	li TESTNUM, 46

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xA897847A
	li x8, 0x535F375B
	li x9, 0x9DA289FE
	li x18, 0xFB24FA7E
	li x19, 0xBA5C0D5D
	li x20, 0xDCB499A7
	li x21, 0x11DB3591
	li x22, 0xDF586432
	li x23, 0x8DB345F2
	li x24, 0x9154B1C6
	li x25, 0xA3165864
	li x26, 0x0E082A85
	li x27, 0x9F2456C4

	cm.push {ra, s0-s11}, -80

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

	cm.pop {ra, s0-s11}, 80

	# Check sp
	bne sp, x5, fail

	li x6, 0xA897847A
	bne x6, x1, fail

	li x6, 0x535F375B
	bne x6, x8, fail

	li x6, 0x9DA289FE
	bne x6, x9, fail

	li x6, 0xFB24FA7E
	bne x6, x18, fail

	li x6, 0xBA5C0D5D
	bne x6, x19, fail

	li x6, 0xDCB499A7
	bne x6, x20, fail

	li x6, 0x11DB3591
	bne x6, x21, fail

	li x6, 0xDF586432
	bne x6, x22, fail

	li x6, 0x8DB345F2
	bne x6, x23, fail

	li x6, 0x9154B1C6
	bne x6, x24, fail

	li x6, 0xA3165864
	bne x6, x25, fail

	li x6, 0x0E082A85
	bne x6, x26, fail

	li x6, 0x9F2456C4
	bne x6, x27, fail

test_47:
	li TESTNUM, 47

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x5EFB1F64
	li x8, 0x86D7DFCF
	li x9, 0x6F9A07B9
	li x18, 0x21F51D02
	li x19, 0x4F6273C2
	li x20, 0x452FE487
	li x21, 0x2EB86C12
	li x22, 0x2E55F7D1
	li x23, 0xEBDF146E
	li x24, 0xCCDA593B
	li x25, 0xF9858FC4
	li x26, 0x0C5161BA
	li x27, 0x66302D44

	cm.push {ra, s0-s11}, -96

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

	cm.pop {ra, s0-s11}, 96

	# Check sp
	bne sp, x5, fail

	li x6, 0x5EFB1F64
	bne x6, x1, fail

	li x6, 0x86D7DFCF
	bne x6, x8, fail

	li x6, 0x6F9A07B9
	bne x6, x9, fail

	li x6, 0x21F51D02
	bne x6, x18, fail

	li x6, 0x4F6273C2
	bne x6, x19, fail

	li x6, 0x452FE487
	bne x6, x20, fail

	li x6, 0x2EB86C12
	bne x6, x21, fail

	li x6, 0x2E55F7D1
	bne x6, x22, fail

	li x6, 0xEBDF146E
	bne x6, x23, fail

	li x6, 0xCCDA593B
	bne x6, x24, fail

	li x6, 0xF9858FC4
	bne x6, x25, fail

	li x6, 0x0C5161BA
	bne x6, x26, fail

	li x6, 0x66302D44
	bne x6, x27, fail

test_48:
	li TESTNUM, 48

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x9A527C85
	li x8, 0xE2AF771A
	li x9, 0xBB115AA9
	li x18, 0xAD56B636
	li x19, 0x89D348B3
	li x20, 0x195B3009
	li x21, 0xDCC5AAD6
	li x22, 0x1EF7A24E
	li x23, 0xF6591C59
	li x24, 0xD2180F6C
	li x25, 0x1C86F1F4
	li x26, 0xA6B7635F
	li x27, 0x9D2CE7E2

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

	li x6, 0x9A527C85
	bne x6, x1, fail

	li x6, 0xE2AF771A
	bne x6, x8, fail

	li x6, 0xBB115AA9
	bne x6, x9, fail

	li x6, 0xAD56B636
	bne x6, x18, fail

	li x6, 0x89D348B3
	bne x6, x19, fail

	li x6, 0x195B3009
	bne x6, x20, fail

	li x6, 0xDCC5AAD6
	bne x6, x21, fail

	li x6, 0x1EF7A24E
	bne x6, x22, fail

	li x6, 0xF6591C59
	bne x6, x23, fail

	li x6, 0xD2180F6C
	bne x6, x24, fail

	li x6, 0x1C86F1F4
	bne x6, x25, fail

	li x6, 0xA6B7635F
	bne x6, x26, fail

	li x6, 0x9D2CE7E2
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