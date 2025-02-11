#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
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
	li x1, 0xA2631987

	cm.push {ra}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 8(sp)
	bne x11, x1, fail

test_2:
	li TESTNUM, 2

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x9712874F

	cm.push {ra}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 24(sp)
	bne x11, x1, fail

test_3:
	li TESTNUM, 3

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x3D0769A1

	cm.push {ra}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x1, fail

test_4:
	li TESTNUM, 4

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x5A4BCB28

	cm.push {ra}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x1, fail

test_5:
	li TESTNUM, 5

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x52CED3A0
	li x8, 0x92BC2BC8

	cm.push {ra, s0}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 8(sp)
	bne x11, x8, fail

	ld x11, 0(sp)
	bne x11, x1, fail

test_6:
	li TESTNUM, 6

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x99AECCFA
	li x8, 0x1530C911

	cm.push {ra, s0}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 24(sp)
	bne x11, x8, fail

	ld x11, 16(sp)
	bne x11, x1, fail

test_7:
	li TESTNUM, 7

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x26493AF0
	li x8, 0xFD57DE06

	cm.push {ra, s0}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x8, fail

	ld x11, 32(sp)
	bne x11, x1, fail

test_8:
	li TESTNUM, 8

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x54B99633
	li x8, 0xA5FB3C94

	cm.push {ra, s0}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x8, fail

	ld x11, 48(sp)
	bne x11, x1, fail

test_9:
	li TESTNUM, 9

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x93431DC3
	li x8, 0x8961C3AA
	li x9, 0x47455712

	cm.push {ra, s0-s1}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_10:
	li TESTNUM, 10

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x6238ACDC
	li x8, 0xD64A65E0
	li x9, 0x142ABAC2

	cm.push {ra, s0-s1}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_11:
	li TESTNUM, 11

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0xDAA069E5
	li x8, 0xF18922D5
	li x9, 0x4ABBD78C

	cm.push {ra, s0-s1}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_12:
	li TESTNUM, 12

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x065FB057
	li x8, 0xC664791A
	li x9, 0xE90A1529

	cm.push {ra, s0-s1}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

test_13:
	li TESTNUM, 13

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x7A180345
	li x8, 0x517941BD
	li x9, 0x9AFFB585
	li x18, 0x95E1F51F

	cm.push {ra, s0-s2}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 24(sp)
	bne x11, x18, fail

	ld x11, 16(sp)
	bne x11, x9, fail

	ld x11, 8(sp)
	bne x11, x8, fail

	ld x11, 0(sp)
	bne x11, x1, fail

test_14:
	li TESTNUM, 14

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x1580BBDF
	li x8, 0xCE6220BB
	li x9, 0x994B2124
	li x18, 0xE3AAA9C8

	cm.push {ra, s0-s2}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x18, fail

	ld x11, 32(sp)
	bne x11, x9, fail

	ld x11, 24(sp)
	bne x11, x8, fail

	ld x11, 16(sp)
	bne x11, x1, fail

test_15:
	li TESTNUM, 15

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x506F2899
	li x8, 0xFEEE9BD0
	li x9, 0x018B1953
	li x18, 0xB3F873FE

	cm.push {ra, s0-s2}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x18, fail

	ld x11, 48(sp)
	bne x11, x9, fail

	ld x11, 40(sp)
	bne x11, x8, fail

	ld x11, 32(sp)
	bne x11, x1, fail

test_16:
	li TESTNUM, 16

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xFDB65C67
	li x8, 0xD5A6965E
	li x9, 0x25E6563D
	li x18, 0x1F7F9CD9

	cm.push {ra, s0-s2}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x18, fail

	ld x11, 64(sp)
	bne x11, x9, fail

	ld x11, 56(sp)
	bne x11, x8, fail

	ld x11, 48(sp)
	bne x11, x1, fail

test_17:
	li TESTNUM, 17

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x9F8235DF
	li x8, 0x09EB67B1
	li x9, 0x08E03CF4
	li x18, 0x81C028D6
	li x19, 0xF93C00D8

	cm.push {ra, s0-s3}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x19, fail

	ld x11, 32(sp)
	bne x11, x18, fail

	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_18:
	li TESTNUM, 18

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x6C923444
	li x8, 0xDC2E4BF3
	li x9, 0x0C8343A2
	li x18, 0x4EF36B9B
	li x19, 0x1A7C3E7D

	cm.push {ra, s0-s3}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x19, fail

	ld x11, 48(sp)
	bne x11, x18, fail

	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_19:
	li TESTNUM, 19

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0xB0DFE6CE
	li x8, 0xCD61C012
	li x9, 0x18D67412
	li x18, 0xBA3BC9D7
	li x19, 0x2335B7A1

	cm.push {ra, s0-s3}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x19, fail

	ld x11, 64(sp)
	bne x11, x18, fail

	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_20:
	li TESTNUM, 20

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x78255FEA
	li x8, 0x1AE6668F
	li x9, 0x3C5E30F7
	li x18, 0x37C995B0
	li x19, 0xF9636C86

	cm.push {ra, s0-s3}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x19, fail

	ld x11, 80(sp)
	bne x11, x18, fail

	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

test_21:
	li TESTNUM, 21

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0xDF88D92E
	li x8, 0xF0EAC738
	li x9, 0xB3D183F0
	li x18, 0x3F52BDFC
	li x19, 0x456476E9
	li x20, 0x7E204C56

	cm.push {ra, s0-s4}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 40(sp)
	bne x11, x20, fail

	ld x11, 32(sp)
	bne x11, x19, fail

	ld x11, 24(sp)
	bne x11, x18, fail

	ld x11, 16(sp)
	bne x11, x9, fail

	ld x11, 8(sp)
	bne x11, x8, fail

	ld x11, 0(sp)
	bne x11, x1, fail

test_22:
	li TESTNUM, 22

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x04E6E126
	li x8, 0x50D7B761
	li x9, 0x2B371CBA
	li x18, 0xD8F95EBB
	li x19, 0xFB60E5B2
	li x20, 0x49C3B1B6

	cm.push {ra, s0-s4}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x20, fail

	ld x11, 48(sp)
	bne x11, x19, fail

	ld x11, 40(sp)
	bne x11, x18, fail

	ld x11, 32(sp)
	bne x11, x9, fail

	ld x11, 24(sp)
	bne x11, x8, fail

	ld x11, 16(sp)
	bne x11, x1, fail

test_23:
	li TESTNUM, 23

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x896CADA1
	li x8, 0x72428DD2
	li x9, 0xDB3A02A5
	li x18, 0x763D1ED2
	li x19, 0xBB596805
	li x20, 0x59EC9762

	cm.push {ra, s0-s4}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x20, fail

	ld x11, 64(sp)
	bne x11, x19, fail

	ld x11, 56(sp)
	bne x11, x18, fail

	ld x11, 48(sp)
	bne x11, x9, fail

	ld x11, 40(sp)
	bne x11, x8, fail

	ld x11, 32(sp)
	bne x11, x1, fail

test_24:
	li TESTNUM, 24

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0xF073DFC9
	li x8, 0x78A10BC0
	li x9, 0x0B2F33FA
	li x18, 0xC59DB9C2
	li x19, 0xCCEFA5D6
	li x20, 0x7D73E84A

	cm.push {ra, s0-s4}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x20, fail

	ld x11, 80(sp)
	bne x11, x19, fail

	ld x11, 72(sp)
	bne x11, x18, fail

	ld x11, 64(sp)
	bne x11, x9, fail

	ld x11, 56(sp)
	bne x11, x8, fail

	ld x11, 48(sp)
	bne x11, x1, fail

test_25:
	li TESTNUM, 25

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x68AFAE60
	li x8, 0x0499FAD8
	li x9, 0xB056954E
	li x18, 0x6A4532A0
	li x19, 0xDC694094
	li x20, 0xBED299D4
	li x21, 0x5A699748

	cm.push {ra, s0-s5}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x21, fail

	ld x11, 48(sp)
	bne x11, x20, fail

	ld x11, 40(sp)
	bne x11, x19, fail

	ld x11, 32(sp)
	bne x11, x18, fail

	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_26:
	li TESTNUM, 26

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x152869D6
	li x8, 0x00827B22
	li x9, 0x7558747C
	li x18, 0x3DEEEAA4
	li x19, 0x4752D5F8
	li x20, 0x7A68F3D8
	li x21, 0xC3D2572B

	cm.push {ra, s0-s5}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x21, fail

	ld x11, 64(sp)
	bne x11, x20, fail

	ld x11, 56(sp)
	bne x11, x19, fail

	ld x11, 48(sp)
	bne x11, x18, fail

	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_27:
	li TESTNUM, 27

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x4600884C
	li x8, 0x94334140
	li x9, 0x1621678D
	li x18, 0xB4449E84
	li x19, 0x6AB1629C
	li x20, 0xB8151D79
	li x21, 0x0AC07A78

	cm.push {ra, s0-s5}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x21, fail

	ld x11, 80(sp)
	bne x11, x20, fail

	ld x11, 72(sp)
	bne x11, x19, fail

	ld x11, 64(sp)
	bne x11, x18, fail

	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_28:
	li TESTNUM, 28

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xA51EED8F
	li x8, 0x00254D1D
	li x9, 0xF8CA4CCF
	li x18, 0x7C3FDB81
	li x19, 0x76A73EE5
	li x20, 0x133C8673
	li x21, 0x80334CA9

	cm.push {ra, s0-s5}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x21, fail

	ld x11, 96(sp)
	bne x11, x20, fail

	ld x11, 88(sp)
	bne x11, x19, fail

	ld x11, 80(sp)
	bne x11, x18, fail

	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

test_29:
	li TESTNUM, 29

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x0EA8E4DB
	li x8, 0xD5CBE19A
	li x9, 0xC8473DD6
	li x18, 0xD7403291
	li x19, 0x33B8CE61
	li x20, 0xFDF86EC1
	li x21, 0xD191DE1D
	li x22, 0x669F3E9F

	cm.push {ra, s0-s6}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 56(sp)
	bne x11, x22, fail

	ld x11, 48(sp)
	bne x11, x21, fail

	ld x11, 40(sp)
	bne x11, x20, fail

	ld x11, 32(sp)
	bne x11, x19, fail

	ld x11, 24(sp)
	bne x11, x18, fail

	ld x11, 16(sp)
	bne x11, x9, fail

	ld x11, 8(sp)
	bne x11, x8, fail

	ld x11, 0(sp)
	bne x11, x1, fail

test_30:
	li TESTNUM, 30

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x57BFBBB3
	li x8, 0x178EC7AB
	li x9, 0x32F6BDB2
	li x18, 0xF986B94B
	li x19, 0x4C5AD2CD
	li x20, 0xE310B283
	li x21, 0xCD8030F0
	li x22, 0x552792DF

	cm.push {ra, s0-s6}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x22, fail

	ld x11, 64(sp)
	bne x11, x21, fail

	ld x11, 56(sp)
	bne x11, x20, fail

	ld x11, 48(sp)
	bne x11, x19, fail

	ld x11, 40(sp)
	bne x11, x18, fail

	ld x11, 32(sp)
	bne x11, x9, fail

	ld x11, 24(sp)
	bne x11, x8, fail

	ld x11, 16(sp)
	bne x11, x1, fail

test_31:
	li TESTNUM, 31

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x43C03A3A
	li x8, 0x561B3DF9
	li x9, 0x1DBE3ACF
	li x18, 0x3168D74E
	li x19, 0x09C36DED
	li x20, 0x913DDEB8
	li x21, 0xE12447DA
	li x22, 0x0BBC0CA5

	cm.push {ra, s0-s6}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x22, fail

	ld x11, 80(sp)
	bne x11, x21, fail

	ld x11, 72(sp)
	bne x11, x20, fail

	ld x11, 64(sp)
	bne x11, x19, fail

	ld x11, 56(sp)
	bne x11, x18, fail

	ld x11, 48(sp)
	bne x11, x9, fail

	ld x11, 40(sp)
	bne x11, x8, fail

	ld x11, 32(sp)
	bne x11, x1, fail

test_32:
	li TESTNUM, 32

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x09315549
	li x8, 0x379E34CA
	li x9, 0xD99932C6
	li x18, 0x0A25CC68
	li x19, 0x8A9F2A37
	li x20, 0x8263C3D9
	li x21, 0x5FA84EA1
	li x22, 0xB44649A6

	cm.push {ra, s0-s6}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x22, fail

	ld x11, 96(sp)
	bne x11, x21, fail

	ld x11, 88(sp)
	bne x11, x20, fail

	ld x11, 80(sp)
	bne x11, x19, fail

	ld x11, 72(sp)
	bne x11, x18, fail

	ld x11, 64(sp)
	bne x11, x9, fail

	ld x11, 56(sp)
	bne x11, x8, fail

	ld x11, 48(sp)
	bne x11, x1, fail

test_33:
	li TESTNUM, 33

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x8228677F
	li x8, 0x7BD98DC2
	li x9, 0xC088DBE2
	li x18, 0x465C9C15
	li x19, 0xDA3831F1
	li x20, 0xAEE0061D
	li x21, 0xB110BB9C
	li x22, 0xD3BF6E31
	li x23, 0xC78767AE

	cm.push {ra, s0-s7}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x23, fail

	ld x11, 64(sp)
	bne x11, x22, fail

	ld x11, 56(sp)
	bne x11, x21, fail

	ld x11, 48(sp)
	bne x11, x20, fail

	ld x11, 40(sp)
	bne x11, x19, fail

	ld x11, 32(sp)
	bne x11, x18, fail

	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_34:
	li TESTNUM, 34

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xE354C75D
	li x8, 0xBAE4146B
	li x9, 0x31DA3B15
	li x18, 0x476CB8EC
	li x19, 0x07DF2ED5
	li x20, 0x4C053BB1
	li x21, 0x2DEB43BF
	li x22, 0xE02758CD
	li x23, 0xD10390C3

	cm.push {ra, s0-s7}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x23, fail

	ld x11, 80(sp)
	bne x11, x22, fail

	ld x11, 72(sp)
	bne x11, x21, fail

	ld x11, 64(sp)
	bne x11, x20, fail

	ld x11, 56(sp)
	bne x11, x19, fail

	ld x11, 48(sp)
	bne x11, x18, fail

	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_35:
	li TESTNUM, 35

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x5A12FDCA
	li x8, 0x94E653DA
	li x9, 0x1485CEE9
	li x18, 0x6AB07CB7
	li x19, 0x221CE565
	li x20, 0x765BF5BA
	li x21, 0x7643AD02
	li x22, 0x36109C1C
	li x23, 0x8FA3CED1

	cm.push {ra, s0-s7}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x23, fail

	ld x11, 96(sp)
	bne x11, x22, fail

	ld x11, 88(sp)
	bne x11, x21, fail

	ld x11, 80(sp)
	bne x11, x20, fail

	ld x11, 72(sp)
	bne x11, x19, fail

	ld x11, 64(sp)
	bne x11, x18, fail

	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_36:
	li TESTNUM, 36

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xD5A6021C
	li x8, 0xCB4E0EB9
	li x9, 0x646A5AFE
	li x18, 0x4285FC3F
	li x19, 0x994FB175
	li x20, 0xF4E9F4A4
	li x21, 0x32CCB17A
	li x22, 0xA88B355A
	li x23, 0x44AB5DCB

	cm.push {ra, s0-s7}, -128

	# Calculate expected sp
	li x6, 128
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 120(sp)
	bne x11, x23, fail

	ld x11, 112(sp)
	bne x11, x22, fail

	ld x11, 104(sp)
	bne x11, x21, fail

	ld x11, 96(sp)
	bne x11, x20, fail

	ld x11, 88(sp)
	bne x11, x19, fail

	ld x11, 80(sp)
	bne x11, x18, fail

	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

test_37:
	li TESTNUM, 37

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x39EB1544
	li x8, 0x27B83AA6
	li x9, 0xE1A40270
	li x18, 0x78D67545
	li x19, 0x16A29EA4
	li x20, 0xF1A7CA07
	li x21, 0xFF9282EE
	li x22, 0xD25BFFD4
	li x23, 0x208A4EF3
	li x24, 0xAC24C29E

	cm.push {ra, s0-s8}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 72(sp)
	bne x11, x24, fail

	ld x11, 64(sp)
	bne x11, x23, fail

	ld x11, 56(sp)
	bne x11, x22, fail

	ld x11, 48(sp)
	bne x11, x21, fail

	ld x11, 40(sp)
	bne x11, x20, fail

	ld x11, 32(sp)
	bne x11, x19, fail

	ld x11, 24(sp)
	bne x11, x18, fail

	ld x11, 16(sp)
	bne x11, x9, fail

	ld x11, 8(sp)
	bne x11, x8, fail

	ld x11, 0(sp)
	bne x11, x1, fail

test_38:
	li TESTNUM, 38

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0xD4AFA5A6
	li x8, 0xDF6CE892
	li x9, 0x79ACF775
	li x18, 0xECC51569
	li x19, 0x9BFC2293
	li x20, 0x09C6FFC6
	li x21, 0xF16489F4
	li x22, 0xE14F3CEC
	li x23, 0x5BA45F03
	li x24, 0xCB049F58

	cm.push {ra, s0-s8}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x24, fail

	ld x11, 80(sp)
	bne x11, x23, fail

	ld x11, 72(sp)
	bne x11, x22, fail

	ld x11, 64(sp)
	bne x11, x21, fail

	ld x11, 56(sp)
	bne x11, x20, fail

	ld x11, 48(sp)
	bne x11, x19, fail

	ld x11, 40(sp)
	bne x11, x18, fail

	ld x11, 32(sp)
	bne x11, x9, fail

	ld x11, 24(sp)
	bne x11, x8, fail

	ld x11, 16(sp)
	bne x11, x1, fail

test_39:
	li TESTNUM, 39

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x39A3B5AA
	li x8, 0x9DECBFD3
	li x9, 0x9EAB1599
	li x18, 0xEDFCD895
	li x19, 0xC3C417D9
	li x20, 0xAB425A1F
	li x21, 0x3CC9B8C3
	li x22, 0x853E6969
	li x23, 0x84C7321F
	li x24, 0x85666389

	cm.push {ra, s0-s8}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x24, fail

	ld x11, 96(sp)
	bne x11, x23, fail

	ld x11, 88(sp)
	bne x11, x22, fail

	ld x11, 80(sp)
	bne x11, x21, fail

	ld x11, 72(sp)
	bne x11, x20, fail

	ld x11, 64(sp)
	bne x11, x19, fail

	ld x11, 56(sp)
	bne x11, x18, fail

	ld x11, 48(sp)
	bne x11, x9, fail

	ld x11, 40(sp)
	bne x11, x8, fail

	ld x11, 32(sp)
	bne x11, x1, fail

test_40:
	li TESTNUM, 40

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x05F824F1
	li x8, 0xB9982F30
	li x9, 0xF3465F9F
	li x18, 0x23D104F8
	li x19, 0xC99C3104
	li x20, 0x36F6D989
	li x21, 0x27B14EF9
	li x22, 0x34150395
	li x23, 0x1F459469
	li x24, 0xE18153B5

	cm.push {ra, s0-s8}, -128

	# Calculate expected sp
	li x6, 128
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 120(sp)
	bne x11, x24, fail

	ld x11, 112(sp)
	bne x11, x23, fail

	ld x11, 104(sp)
	bne x11, x22, fail

	ld x11, 96(sp)
	bne x11, x21, fail

	ld x11, 88(sp)
	bne x11, x20, fail

	ld x11, 80(sp)
	bne x11, x19, fail

	ld x11, 72(sp)
	bne x11, x18, fail

	ld x11, 64(sp)
	bne x11, x9, fail

	ld x11, 56(sp)
	bne x11, x8, fail

	ld x11, 48(sp)
	bne x11, x1, fail

test_41:
	li TESTNUM, 41

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x7B4B6743
	li x8, 0x85C67B2C
	li x9, 0xF3EFDF4D
	li x18, 0xDA701C7A
	li x19, 0x79E4DCC6
	li x20, 0x55890F06
	li x21, 0x9726A934
	li x22, 0x24012AF5
	li x23, 0x40FF751C
	li x24, 0x0BD3C4E3
	li x25, 0x85E37069

	cm.push {ra, s0-s9}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 88(sp)
	bne x11, x25, fail

	ld x11, 80(sp)
	bne x11, x24, fail

	ld x11, 72(sp)
	bne x11, x23, fail

	ld x11, 64(sp)
	bne x11, x22, fail

	ld x11, 56(sp)
	bne x11, x21, fail

	ld x11, 48(sp)
	bne x11, x20, fail

	ld x11, 40(sp)
	bne x11, x19, fail

	ld x11, 32(sp)
	bne x11, x18, fail

	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_42:
	li TESTNUM, 42

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x27718D5E
	li x8, 0x9077E76A
	li x9, 0x9F5F5CE0
	li x18, 0x61A4D2B2
	li x19, 0xBBFC541A
	li x20, 0x4ECF25BB
	li x21, 0xB1B7F72E
	li x22, 0x7B66C4CD
	li x23, 0xAAFB7142
	li x24, 0x17C871E9
	li x25, 0x63DEBA3D

	cm.push {ra, s0-s9}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x25, fail

	ld x11, 96(sp)
	bne x11, x24, fail

	ld x11, 88(sp)
	bne x11, x23, fail

	ld x11, 80(sp)
	bne x11, x22, fail

	ld x11, 72(sp)
	bne x11, x21, fail

	ld x11, 64(sp)
	bne x11, x20, fail

	ld x11, 56(sp)
	bne x11, x19, fail

	ld x11, 48(sp)
	bne x11, x18, fail

	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_43:
	li TESTNUM, 43

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x610054E0
	li x8, 0xCB4C4253
	li x9, 0xDDB6FC30
	li x18, 0x05D6C338
	li x19, 0x1971D080
	li x20, 0xED7575D5
	li x21, 0x70DDF540
	li x22, 0xE2302C05
	li x23, 0x2CAC87E4
	li x24, 0x39252E6F
	li x25, 0x02602B21

	cm.push {ra, s0-s9}, -128

	# Calculate expected sp
	li x6, 128
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 120(sp)
	bne x11, x25, fail

	ld x11, 112(sp)
	bne x11, x24, fail

	ld x11, 104(sp)
	bne x11, x23, fail

	ld x11, 96(sp)
	bne x11, x22, fail

	ld x11, 88(sp)
	bne x11, x21, fail

	ld x11, 80(sp)
	bne x11, x20, fail

	ld x11, 72(sp)
	bne x11, x19, fail

	ld x11, 64(sp)
	bne x11, x18, fail

	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_44:
	li TESTNUM, 44

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xCE5CF8CA
	li x8, 0xEA21C4A0
	li x9, 0x7F296C21
	li x18, 0x4CBD0593
	li x19, 0xE987856B
	li x20, 0x97B3CAA5
	li x21, 0x1349072A
	li x22, 0xFB480FAA
	li x23, 0x2A83C936
	li x24, 0x7B0476AC
	li x25, 0x38288229

	cm.push {ra, s0-s9}, -144

	# Calculate expected sp
	li x6, 144
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 136(sp)
	bne x11, x25, fail

	ld x11, 128(sp)
	bne x11, x24, fail

	ld x11, 120(sp)
	bne x11, x23, fail

	ld x11, 112(sp)
	bne x11, x22, fail

	ld x11, 104(sp)
	bne x11, x21, fail

	ld x11, 96(sp)
	bne x11, x20, fail

	ld x11, 88(sp)
	bne x11, x19, fail

	ld x11, 80(sp)
	bne x11, x18, fail

	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

test_45:
	li TESTNUM, 45

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x753D3479
	li x8, 0x7B740191
	li x9, 0x92E1D898
	li x18, 0x3C0B3B03
	li x19, 0xB1D6C0DF
	li x20, 0x42CDA5DA
	li x21, 0x942C4922
	li x22, 0x98249F6C
	li x23, 0x70D53A0B
	li x24, 0x375D737D
	li x25, 0x82219E5B
	li x26, 0x002BB9EF
	li x27, 0xB5A37668

	cm.push {ra, s0-s11}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 104(sp)
	bne x11, x27, fail

	ld x11, 96(sp)
	bne x11, x26, fail

	ld x11, 88(sp)
	bne x11, x25, fail

	ld x11, 80(sp)
	bne x11, x24, fail

	ld x11, 72(sp)
	bne x11, x23, fail

	ld x11, 64(sp)
	bne x11, x22, fail

	ld x11, 56(sp)
	bne x11, x21, fail

	ld x11, 48(sp)
	bne x11, x20, fail

	ld x11, 40(sp)
	bne x11, x19, fail

	ld x11, 32(sp)
	bne x11, x18, fail

	ld x11, 24(sp)
	bne x11, x9, fail

	ld x11, 16(sp)
	bne x11, x8, fail

	ld x11, 8(sp)
	bne x11, x1, fail

test_46:
	li TESTNUM, 46

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x086FACDB
	li x8, 0xE7380A65
	li x9, 0x9C1C454D
	li x18, 0xBF319D55
	li x19, 0x8C123E2C
	li x20, 0x847ED76A
	li x21, 0x0CB8B3C9
	li x22, 0xA801B72E
	li x23, 0x9F418D63
	li x24, 0x7831D367
	li x25, 0x3584729D
	li x26, 0xE54B92BA
	li x27, 0x86D96C19

	cm.push {ra, s0-s11}, -128

	# Calculate expected sp
	li x6, 128
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 120(sp)
	bne x11, x27, fail

	ld x11, 112(sp)
	bne x11, x26, fail

	ld x11, 104(sp)
	bne x11, x25, fail

	ld x11, 96(sp)
	bne x11, x24, fail

	ld x11, 88(sp)
	bne x11, x23, fail

	ld x11, 80(sp)
	bne x11, x22, fail

	ld x11, 72(sp)
	bne x11, x21, fail

	ld x11, 64(sp)
	bne x11, x20, fail

	ld x11, 56(sp)
	bne x11, x19, fail

	ld x11, 48(sp)
	bne x11, x18, fail

	ld x11, 40(sp)
	bne x11, x9, fail

	ld x11, 32(sp)
	bne x11, x8, fail

	ld x11, 24(sp)
	bne x11, x1, fail

test_47:
	li TESTNUM, 47

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x58086737
	li x8, 0xBDFC1EFD
	li x9, 0x87870BB3
	li x18, 0xBF69CD9C
	li x19, 0xEBF64EEB
	li x20, 0x3E6D6D8E
	li x21, 0x6DF02D29
	li x22, 0x10F2FBB9
	li x23, 0xFD8570AD
	li x24, 0xE86A41A9
	li x25, 0x008A7795
	li x26, 0x6AEAA995
	li x27, 0x01D03BE0

	cm.push {ra, s0-s11}, -144

	# Calculate expected sp
	li x6, 144
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 136(sp)
	bne x11, x27, fail

	ld x11, 128(sp)
	bne x11, x26, fail

	ld x11, 120(sp)
	bne x11, x25, fail

	ld x11, 112(sp)
	bne x11, x24, fail

	ld x11, 104(sp)
	bne x11, x23, fail

	ld x11, 96(sp)
	bne x11, x22, fail

	ld x11, 88(sp)
	bne x11, x21, fail

	ld x11, 80(sp)
	bne x11, x20, fail

	ld x11, 72(sp)
	bne x11, x19, fail

	ld x11, 64(sp)
	bne x11, x18, fail

	ld x11, 56(sp)
	bne x11, x9, fail

	ld x11, 48(sp)
	bne x11, x8, fail

	ld x11, 40(sp)
	bne x11, x1, fail

test_48:
	li TESTNUM, 48

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x47DC9D8C
	li x8, 0x954EF24C
	li x9, 0xC5AC02D1
	li x18, 0x165AB728
	li x19, 0xF2A10DBC
	li x20, 0xD2FA49CC
	li x21, 0x1A3FBC86
	li x22, 0xFEB40B29
	li x23, 0xA12C31D3
	li x24, 0x8DED99B5
	li x25, 0xBAA57ADA
	li x26, 0xE0DAE07C
	li x27, 0xE506FE7C

	cm.push {ra, s0-s11}, -160

	# Calculate expected sp
	li x6, 160
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	ld x11, 152(sp)
	bne x11, x27, fail

	ld x11, 144(sp)
	bne x11, x26, fail

	ld x11, 136(sp)
	bne x11, x25, fail

	ld x11, 128(sp)
	bne x11, x24, fail

	ld x11, 120(sp)
	bne x11, x23, fail

	ld x11, 112(sp)
	bne x11, x22, fail

	ld x11, 104(sp)
	bne x11, x21, fail

	ld x11, 96(sp)
	bne x11, x20, fail

	ld x11, 88(sp)
	bne x11, x19, fail

	ld x11, 80(sp)
	bne x11, x18, fail

	ld x11, 72(sp)
	bne x11, x9, fail

	ld x11, 64(sp)
	bne x11, x8, fail

	ld x11, 56(sp)
	bne x11, x1, fail

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