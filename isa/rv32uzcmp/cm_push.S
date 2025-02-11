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
	li x1, 0x41133D06

	cm.push {ra}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 12(sp)
	bne x11, x1, fail

test_2:
	li TESTNUM, 2

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x50DD1BF2

	cm.push {ra}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x1, fail

test_3:
	li TESTNUM, 3

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0xB919F8DC

	cm.push {ra}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x1, fail

test_4:
	li TESTNUM, 4

	# Restore sp to initial value
	mv sp, x5

	# Set ra to known value
	li x1, 0x44282DC7

	cm.push {ra}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x1, fail

test_5:
	li TESTNUM, 5

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x77D480CB
	li x8, 0xC0DF78B4

	cm.push {ra, s0}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 12(sp)
	bne x11, x8, fail

	lw x11, 8(sp)
	bne x11, x1, fail

test_6:
	li TESTNUM, 6

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x6AD83F6E
	li x8, 0x71735A45

	cm.push {ra, s0}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x8, fail

	lw x11, 24(sp)
	bne x11, x1, fail

test_7:
	li TESTNUM, 7

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0x66009228
	li x8, 0x2026EBB5

	cm.push {ra, s0}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x8, fail

	lw x11, 40(sp)
	bne x11, x1, fail

test_8:
	li TESTNUM, 8

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0 to known values
	li x1, 0xD5A4F518
	li x8, 0xC297431B

	cm.push {ra, s0}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x8, fail

	lw x11, 56(sp)
	bne x11, x1, fail

test_9:
	li TESTNUM, 9

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0xCF69AC4B
	li x8, 0xBC2991A8
	li x9, 0x5F285D5D

	cm.push {ra, s0-s1}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 12(sp)
	bne x11, x9, fail

	lw x11, 8(sp)
	bne x11, x8, fail

	lw x11, 4(sp)
	bne x11, x1, fail

test_10:
	li TESTNUM, 10

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x213E8C0C
	li x8, 0x545E0920
	li x9, 0x108E356F

	cm.push {ra, s0-s1}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x9, fail

	lw x11, 24(sp)
	bne x11, x8, fail

	lw x11, 20(sp)
	bne x11, x1, fail

test_11:
	li TESTNUM, 11

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x28F51616
	li x8, 0x82884F88
	li x9, 0x3A543019

	cm.push {ra, s0-s1}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x9, fail

	lw x11, 40(sp)
	bne x11, x8, fail

	lw x11, 36(sp)
	bne x11, x1, fail

test_12:
	li TESTNUM, 12

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s1 to known values
	li x1, 0x09637487
	li x8, 0x78D3C094
	li x9, 0x91640EFB

	cm.push {ra, s0-s1}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x9, fail

	lw x11, 56(sp)
	bne x11, x8, fail

	lw x11, 52(sp)
	bne x11, x1, fail

test_13:
	li TESTNUM, 13

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xAECED090
	li x8, 0xB458F02C
	li x9, 0xFD464487
	li x18, 0x9E93893D

	cm.push {ra, s0-s2}, -16

	# Calculate expected sp
	li x6, 16
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 12(sp)
	bne x11, x18, fail

	lw x11, 8(sp)
	bne x11, x9, fail

	lw x11, 4(sp)
	bne x11, x8, fail

	lw x11, 0(sp)
	bne x11, x1, fail

test_14:
	li TESTNUM, 14

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xE64FD054
	li x8, 0x6F3E2503
	li x9, 0xE31DCB3F
	li x18, 0x5F860BE8

	cm.push {ra, s0-s2}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x18, fail

	lw x11, 24(sp)
	bne x11, x9, fail

	lw x11, 20(sp)
	bne x11, x8, fail

	lw x11, 16(sp)
	bne x11, x1, fail

test_15:
	li TESTNUM, 15

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0xD70E8C42
	li x8, 0x2A0A7F34
	li x9, 0x47D43044
	li x18, 0xBA1653C4

	cm.push {ra, s0-s2}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x18, fail

	lw x11, 40(sp)
	bne x11, x9, fail

	lw x11, 36(sp)
	bne x11, x8, fail

	lw x11, 32(sp)
	bne x11, x1, fail

test_16:
	li TESTNUM, 16

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s2 to known values
	li x1, 0x0FDFC1FF
	li x8, 0x2C554511
	li x9, 0x9E292667
	li x18, 0x356014FB

	cm.push {ra, s0-s2}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x18, fail

	lw x11, 56(sp)
	bne x11, x9, fail

	lw x11, 52(sp)
	bne x11, x8, fail

	lw x11, 48(sp)
	bne x11, x1, fail

test_17:
	li TESTNUM, 17

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x8E444F0A
	li x8, 0x0ECACFC7
	li x9, 0xC672FDBB
	li x18, 0xACF27B72
	li x19, 0xE77F2C03

	cm.push {ra, s0-s3}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x19, fail

	lw x11, 24(sp)
	bne x11, x18, fail

	lw x11, 20(sp)
	bne x11, x9, fail

	lw x11, 16(sp)
	bne x11, x8, fail

	lw x11, 12(sp)
	bne x11, x1, fail

test_18:
	li TESTNUM, 18

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x4C89DAAD
	li x8, 0x5D3F8E0F
	li x9, 0xFF22E2CF
	li x18, 0xF9D11911
	li x19, 0xC78B5B93

	cm.push {ra, s0-s3}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x19, fail

	lw x11, 40(sp)
	bne x11, x18, fail

	lw x11, 36(sp)
	bne x11, x9, fail

	lw x11, 32(sp)
	bne x11, x8, fail

	lw x11, 28(sp)
	bne x11, x1, fail

test_19:
	li TESTNUM, 19

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x491B17AF
	li x8, 0x17463572
	li x9, 0x3EF0A4FD
	li x18, 0xED82CD14
	li x19, 0xE5F27FB5

	cm.push {ra, s0-s3}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x19, fail

	lw x11, 56(sp)
	bne x11, x18, fail

	lw x11, 52(sp)
	bne x11, x9, fail

	lw x11, 48(sp)
	bne x11, x8, fail

	lw x11, 44(sp)
	bne x11, x1, fail

test_20:
	li TESTNUM, 20

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s3 to known values
	li x1, 0x5582E673
	li x8, 0xE1F0B9E6
	li x9, 0xD98FC14D
	li x18, 0x2D06D8F8
	li x19, 0x51DA423A

	cm.push {ra, s0-s3}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x19, fail

	lw x11, 72(sp)
	bne x11, x18, fail

	lw x11, 68(sp)
	bne x11, x9, fail

	lw x11, 64(sp)
	bne x11, x8, fail

	lw x11, 60(sp)
	bne x11, x1, fail

test_21:
	li TESTNUM, 21

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x7A0B0F9D
	li x8, 0x898D0D03
	li x9, 0xBAF0A8B3
	li x18, 0x4CAB5EA8
	li x19, 0xEECAB213
	li x20, 0x974ECB2B

	cm.push {ra, s0-s4}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x20, fail

	lw x11, 24(sp)
	bne x11, x19, fail

	lw x11, 20(sp)
	bne x11, x18, fail

	lw x11, 16(sp)
	bne x11, x9, fail

	lw x11, 12(sp)
	bne x11, x8, fail

	lw x11, 8(sp)
	bne x11, x1, fail

test_22:
	li TESTNUM, 22

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0xEE29338E
	li x8, 0xB2E98ACA
	li x9, 0xF62AD831
	li x18, 0x1BD05CF8
	li x19, 0x02F8122C
	li x20, 0x24B1D5F7

	cm.push {ra, s0-s4}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x20, fail

	lw x11, 40(sp)
	bne x11, x19, fail

	lw x11, 36(sp)
	bne x11, x18, fail

	lw x11, 32(sp)
	bne x11, x9, fail

	lw x11, 28(sp)
	bne x11, x8, fail

	lw x11, 24(sp)
	bne x11, x1, fail

test_23:
	li TESTNUM, 23

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x6C90AF52
	li x8, 0x0702ED46
	li x9, 0x4C5E09D1
	li x18, 0xF52002D6
	li x19, 0xA94BC0E2
	li x20, 0x53CE7CFB

	cm.push {ra, s0-s4}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x20, fail

	lw x11, 56(sp)
	bne x11, x19, fail

	lw x11, 52(sp)
	bne x11, x18, fail

	lw x11, 48(sp)
	bne x11, x9, fail

	lw x11, 44(sp)
	bne x11, x8, fail

	lw x11, 40(sp)
	bne x11, x1, fail

test_24:
	li TESTNUM, 24

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s4 to known values
	li x1, 0x6D14DE74
	li x8, 0x623DE2FB
	li x9, 0x098F4133
	li x18, 0xCB242A16
	li x19, 0xCF31B5FE
	li x20, 0x2401C3E3

	cm.push {ra, s0-s4}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x20, fail

	lw x11, 72(sp)
	bne x11, x19, fail

	lw x11, 68(sp)
	bne x11, x18, fail

	lw x11, 64(sp)
	bne x11, x9, fail

	lw x11, 60(sp)
	bne x11, x8, fail

	lw x11, 56(sp)
	bne x11, x1, fail

test_25:
	li TESTNUM, 25

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xDA66EC43
	li x8, 0xCA73F87D
	li x9, 0x378566BF
	li x18, 0xCBEFB544
	li x19, 0xFE9885F3
	li x20, 0x91174911
	li x21, 0x07EFD3C0

	cm.push {ra, s0-s5}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x21, fail

	lw x11, 24(sp)
	bne x11, x20, fail

	lw x11, 20(sp)
	bne x11, x19, fail

	lw x11, 16(sp)
	bne x11, x18, fail

	lw x11, 12(sp)
	bne x11, x9, fail

	lw x11, 8(sp)
	bne x11, x8, fail

	lw x11, 4(sp)
	bne x11, x1, fail

test_26:
	li TESTNUM, 26

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xB6E49255
	li x8, 0x66FBE095
	li x9, 0x058D2593
	li x18, 0x92EC161A
	li x19, 0xD5629337
	li x20, 0xB82D1B3E
	li x21, 0xE80CF8F2

	cm.push {ra, s0-s5}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x21, fail

	lw x11, 40(sp)
	bne x11, x20, fail

	lw x11, 36(sp)
	bne x11, x19, fail

	lw x11, 32(sp)
	bne x11, x18, fail

	lw x11, 28(sp)
	bne x11, x9, fail

	lw x11, 24(sp)
	bne x11, x8, fail

	lw x11, 20(sp)
	bne x11, x1, fail

test_27:
	li TESTNUM, 27

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0x2D16CE8C
	li x8, 0x98FEDFBB
	li x9, 0x0382D443
	li x18, 0xEA3BCAC8
	li x19, 0x65365F22
	li x20, 0xF3095A05
	li x21, 0x35B765B9

	cm.push {ra, s0-s5}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x21, fail

	lw x11, 56(sp)
	bne x11, x20, fail

	lw x11, 52(sp)
	bne x11, x19, fail

	lw x11, 48(sp)
	bne x11, x18, fail

	lw x11, 44(sp)
	bne x11, x9, fail

	lw x11, 40(sp)
	bne x11, x8, fail

	lw x11, 36(sp)
	bne x11, x1, fail

test_28:
	li TESTNUM, 28

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s5 to known values
	li x1, 0xD955DBDF
	li x8, 0x963ECC8A
	li x9, 0xBC3FDA69
	li x18, 0x0F18C288
	li x19, 0xFB64D1CF
	li x20, 0x7EF53B09
	li x21, 0x1CEA1F48

	cm.push {ra, s0-s5}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x21, fail

	lw x11, 72(sp)
	bne x11, x20, fail

	lw x11, 68(sp)
	bne x11, x19, fail

	lw x11, 64(sp)
	bne x11, x18, fail

	lw x11, 60(sp)
	bne x11, x9, fail

	lw x11, 56(sp)
	bne x11, x8, fail

	lw x11, 52(sp)
	bne x11, x1, fail

test_29:
	li TESTNUM, 29

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x4D99F196
	li x8, 0x56F3D543
	li x9, 0xEDBD3D1B
	li x18, 0x362C2749
	li x19, 0xB9DD3438
	li x20, 0xAC38F29D
	li x21, 0xA4F370AB
	li x22, 0xD990817A

	cm.push {ra, s0-s6}, -32

	# Calculate expected sp
	li x6, 32
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 28(sp)
	bne x11, x22, fail

	lw x11, 24(sp)
	bne x11, x21, fail

	lw x11, 20(sp)
	bne x11, x20, fail

	lw x11, 16(sp)
	bne x11, x19, fail

	lw x11, 12(sp)
	bne x11, x18, fail

	lw x11, 8(sp)
	bne x11, x9, fail

	lw x11, 4(sp)
	bne x11, x8, fail

	lw x11, 0(sp)
	bne x11, x1, fail

test_30:
	li TESTNUM, 30

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0xE0E37675
	li x8, 0x3AAFCF7B
	li x9, 0xDEA94D1F
	li x18, 0xC979D848
	li x19, 0x9132E8BA
	li x20, 0x2B9D6DAD
	li x21, 0xB0ABC69E
	li x22, 0x8F012D2B

	cm.push {ra, s0-s6}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x22, fail

	lw x11, 40(sp)
	bne x11, x21, fail

	lw x11, 36(sp)
	bne x11, x20, fail

	lw x11, 32(sp)
	bne x11, x19, fail

	lw x11, 28(sp)
	bne x11, x18, fail

	lw x11, 24(sp)
	bne x11, x9, fail

	lw x11, 20(sp)
	bne x11, x8, fail

	lw x11, 16(sp)
	bne x11, x1, fail

test_31:
	li TESTNUM, 31

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x7BE84F68
	li x8, 0xBAB47313
	li x9, 0xABF2CB95
	li x18, 0x229CB8E2
	li x19, 0xF4C9D008
	li x20, 0x59333D67
	li x21, 0x3B74AAA0
	li x22, 0xCF13AD30

	cm.push {ra, s0-s6}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x22, fail

	lw x11, 56(sp)
	bne x11, x21, fail

	lw x11, 52(sp)
	bne x11, x20, fail

	lw x11, 48(sp)
	bne x11, x19, fail

	lw x11, 44(sp)
	bne x11, x18, fail

	lw x11, 40(sp)
	bne x11, x9, fail

	lw x11, 36(sp)
	bne x11, x8, fail

	lw x11, 32(sp)
	bne x11, x1, fail

test_32:
	li TESTNUM, 32

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s6 to known values
	li x1, 0x51748669
	li x8, 0x946463B0
	li x9, 0xE605C32E
	li x18, 0x2543E654
	li x19, 0x7C84D63F
	li x20, 0x02B992E7
	li x21, 0xE9F4C615
	li x22, 0x596B6E46

	cm.push {ra, s0-s6}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x22, fail

	lw x11, 72(sp)
	bne x11, x21, fail

	lw x11, 68(sp)
	bne x11, x20, fail

	lw x11, 64(sp)
	bne x11, x19, fail

	lw x11, 60(sp)
	bne x11, x18, fail

	lw x11, 56(sp)
	bne x11, x9, fail

	lw x11, 52(sp)
	bne x11, x8, fail

	lw x11, 48(sp)
	bne x11, x1, fail

test_33:
	li TESTNUM, 33

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0xB1592BCF
	li x8, 0x1ED81FDD
	li x9, 0x5067014E
	li x18, 0x3BFB8292
	li x19, 0xF2AD7454
	li x20, 0x0AB5C34E
	li x21, 0x9EAEA11F
	li x22, 0xC91FEAEE
	li x23, 0x1D08EB5D

	cm.push {ra, s0-s7}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x23, fail

	lw x11, 40(sp)
	bne x11, x22, fail

	lw x11, 36(sp)
	bne x11, x21, fail

	lw x11, 32(sp)
	bne x11, x20, fail

	lw x11, 28(sp)
	bne x11, x19, fail

	lw x11, 24(sp)
	bne x11, x18, fail

	lw x11, 20(sp)
	bne x11, x9, fail

	lw x11, 16(sp)
	bne x11, x8, fail

	lw x11, 12(sp)
	bne x11, x1, fail

test_34:
	li TESTNUM, 34

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x2CD80A6D
	li x8, 0x8BBA5266
	li x9, 0xC322AEAC
	li x18, 0xB5917AC3
	li x19, 0xDE336B71
	li x20, 0x72EBDAE9
	li x21, 0x0AC9CFE5
	li x22, 0xB33F3494
	li x23, 0x1589F77B

	cm.push {ra, s0-s7}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x23, fail

	lw x11, 56(sp)
	bne x11, x22, fail

	lw x11, 52(sp)
	bne x11, x21, fail

	lw x11, 48(sp)
	bne x11, x20, fail

	lw x11, 44(sp)
	bne x11, x19, fail

	lw x11, 40(sp)
	bne x11, x18, fail

	lw x11, 36(sp)
	bne x11, x9, fail

	lw x11, 32(sp)
	bne x11, x8, fail

	lw x11, 28(sp)
	bne x11, x1, fail

test_35:
	li TESTNUM, 35

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x35EE8397
	li x8, 0xCC37611C
	li x9, 0x7C4ADAF3
	li x18, 0xD89666D5
	li x19, 0x96CA04FD
	li x20, 0xE47D307F
	li x21, 0x4F498167
	li x22, 0x325AC682
	li x23, 0x259DC6E3

	cm.push {ra, s0-s7}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x23, fail

	lw x11, 72(sp)
	bne x11, x22, fail

	lw x11, 68(sp)
	bne x11, x21, fail

	lw x11, 64(sp)
	bne x11, x20, fail

	lw x11, 60(sp)
	bne x11, x19, fail

	lw x11, 56(sp)
	bne x11, x18, fail

	lw x11, 52(sp)
	bne x11, x9, fail

	lw x11, 48(sp)
	bne x11, x8, fail

	lw x11, 44(sp)
	bne x11, x1, fail

test_36:
	li TESTNUM, 36

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s7 to known values
	li x1, 0x29603B7B
	li x8, 0x26032949
	li x9, 0x6E5AFB0D
	li x18, 0x9A8822BF
	li x19, 0x6B03046E
	li x20, 0xB564A871
	li x21, 0xF14C953D
	li x22, 0x9C334D52
	li x23, 0x8D955007

	cm.push {ra, s0-s7}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 92(sp)
	bne x11, x23, fail

	lw x11, 88(sp)
	bne x11, x22, fail

	lw x11, 84(sp)
	bne x11, x21, fail

	lw x11, 80(sp)
	bne x11, x20, fail

	lw x11, 76(sp)
	bne x11, x19, fail

	lw x11, 72(sp)
	bne x11, x18, fail

	lw x11, 68(sp)
	bne x11, x9, fail

	lw x11, 64(sp)
	bne x11, x8, fail

	lw x11, 60(sp)
	bne x11, x1, fail

test_37:
	li TESTNUM, 37

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x0EFA83D2
	li x8, 0x8950D383
	li x9, 0x6A3C9A1E
	li x18, 0x801123E7
	li x19, 0x5A3712A2
	li x20, 0x6F47E3B6
	li x21, 0x269561DE
	li x22, 0xA6DB87B0
	li x23, 0xD9B63C72
	li x24, 0x686E3F33

	cm.push {ra, s0-s8}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x24, fail

	lw x11, 40(sp)
	bne x11, x23, fail

	lw x11, 36(sp)
	bne x11, x22, fail

	lw x11, 32(sp)
	bne x11, x21, fail

	lw x11, 28(sp)
	bne x11, x20, fail

	lw x11, 24(sp)
	bne x11, x19, fail

	lw x11, 20(sp)
	bne x11, x18, fail

	lw x11, 16(sp)
	bne x11, x9, fail

	lw x11, 12(sp)
	bne x11, x8, fail

	lw x11, 8(sp)
	bne x11, x1, fail

test_38:
	li TESTNUM, 38

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x8FA94B80
	li x8, 0xC4E3E206
	li x9, 0x19C2665C
	li x18, 0x277DD438
	li x19, 0x2A2416AB
	li x20, 0x13B31D87
	li x21, 0x208D1328
	li x22, 0xF6AEE085
	li x23, 0x25B79BD4
	li x24, 0x0D6B5281

	cm.push {ra, s0-s8}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x24, fail

	lw x11, 56(sp)
	bne x11, x23, fail

	lw x11, 52(sp)
	bne x11, x22, fail

	lw x11, 48(sp)
	bne x11, x21, fail

	lw x11, 44(sp)
	bne x11, x20, fail

	lw x11, 40(sp)
	bne x11, x19, fail

	lw x11, 36(sp)
	bne x11, x18, fail

	lw x11, 32(sp)
	bne x11, x9, fail

	lw x11, 28(sp)
	bne x11, x8, fail

	lw x11, 24(sp)
	bne x11, x1, fail

test_39:
	li TESTNUM, 39

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x6808D9D0
	li x8, 0x3D9B33ED
	li x9, 0x6645EC52
	li x18, 0x738201A3
	li x19, 0x28B1BD83
	li x20, 0xEC2C0D8A
	li x21, 0xB53DC425
	li x22, 0xAC5EC551
	li x23, 0xEFFD7E96
	li x24, 0x9CACF3CA

	cm.push {ra, s0-s8}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x24, fail

	lw x11, 72(sp)
	bne x11, x23, fail

	lw x11, 68(sp)
	bne x11, x22, fail

	lw x11, 64(sp)
	bne x11, x21, fail

	lw x11, 60(sp)
	bne x11, x20, fail

	lw x11, 56(sp)
	bne x11, x19, fail

	lw x11, 52(sp)
	bne x11, x18, fail

	lw x11, 48(sp)
	bne x11, x9, fail

	lw x11, 44(sp)
	bne x11, x8, fail

	lw x11, 40(sp)
	bne x11, x1, fail

test_40:
	li TESTNUM, 40

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s8 to known values
	li x1, 0x7E16D336
	li x8, 0x6787DCD3
	li x9, 0xF398599C
	li x18, 0x4A558CA4
	li x19, 0x609741CA
	li x20, 0xDE301A36
	li x21, 0x2D609234
	li x22, 0x7EFD6BC9
	li x23, 0xA3A86C9C
	li x24, 0x53148450

	cm.push {ra, s0-s8}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 92(sp)
	bne x11, x24, fail

	lw x11, 88(sp)
	bne x11, x23, fail

	lw x11, 84(sp)
	bne x11, x22, fail

	lw x11, 80(sp)
	bne x11, x21, fail

	lw x11, 76(sp)
	bne x11, x20, fail

	lw x11, 72(sp)
	bne x11, x19, fail

	lw x11, 68(sp)
	bne x11, x18, fail

	lw x11, 64(sp)
	bne x11, x9, fail

	lw x11, 60(sp)
	bne x11, x8, fail

	lw x11, 56(sp)
	bne x11, x1, fail

test_41:
	li TESTNUM, 41

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xF4CE6084
	li x8, 0xCFC2DCE7
	li x9, 0x840C0A8E
	li x18, 0x840EDE23
	li x19, 0x8B7E74E9
	li x20, 0xFBDC5152
	li x21, 0x57EE607E
	li x22, 0x93EAF3CB
	li x23, 0x59D07D29
	li x24, 0x60FEF7D2
	li x25, 0xB7BE5F6D

	cm.push {ra, s0-s9}, -48

	# Calculate expected sp
	li x6, 48
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 44(sp)
	bne x11, x25, fail

	lw x11, 40(sp)
	bne x11, x24, fail

	lw x11, 36(sp)
	bne x11, x23, fail

	lw x11, 32(sp)
	bne x11, x22, fail

	lw x11, 28(sp)
	bne x11, x21, fail

	lw x11, 24(sp)
	bne x11, x20, fail

	lw x11, 20(sp)
	bne x11, x19, fail

	lw x11, 16(sp)
	bne x11, x18, fail

	lw x11, 12(sp)
	bne x11, x9, fail

	lw x11, 8(sp)
	bne x11, x8, fail

	lw x11, 4(sp)
	bne x11, x1, fail

test_42:
	li TESTNUM, 42

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0x64AAAABE
	li x8, 0x3E12F551
	li x9, 0xD39C1A7C
	li x18, 0xDA4A0D3F
	li x19, 0x1479FEC6
	li x20, 0x777DA9CE
	li x21, 0x79546E4A
	li x22, 0xF82B1A3C
	li x23, 0xD1FC583B
	li x24, 0x55A5E03A
	li x25, 0x8D7ACD65

	cm.push {ra, s0-s9}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x25, fail

	lw x11, 56(sp)
	bne x11, x24, fail

	lw x11, 52(sp)
	bne x11, x23, fail

	lw x11, 48(sp)
	bne x11, x22, fail

	lw x11, 44(sp)
	bne x11, x21, fail

	lw x11, 40(sp)
	bne x11, x20, fail

	lw x11, 36(sp)
	bne x11, x19, fail

	lw x11, 32(sp)
	bne x11, x18, fail

	lw x11, 28(sp)
	bne x11, x9, fail

	lw x11, 24(sp)
	bne x11, x8, fail

	lw x11, 20(sp)
	bne x11, x1, fail

test_43:
	li TESTNUM, 43

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xC399A488
	li x8, 0xEC25852F
	li x9, 0x34C92192
	li x18, 0x2AA720E4
	li x19, 0xF9341073
	li x20, 0x1DCE3FF7
	li x21, 0xEF361BBC
	li x22, 0xD1F63496
	li x23, 0xDA773502
	li x24, 0xD4CDD534
	li x25, 0xBD9E02E0

	cm.push {ra, s0-s9}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x25, fail

	lw x11, 72(sp)
	bne x11, x24, fail

	lw x11, 68(sp)
	bne x11, x23, fail

	lw x11, 64(sp)
	bne x11, x22, fail

	lw x11, 60(sp)
	bne x11, x21, fail

	lw x11, 56(sp)
	bne x11, x20, fail

	lw x11, 52(sp)
	bne x11, x19, fail

	lw x11, 48(sp)
	bne x11, x18, fail

	lw x11, 44(sp)
	bne x11, x9, fail

	lw x11, 40(sp)
	bne x11, x8, fail

	lw x11, 36(sp)
	bne x11, x1, fail

test_44:
	li TESTNUM, 44

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s9 to known values
	li x1, 0xDA4D9D2A
	li x8, 0x3D591472
	li x9, 0x88B590F0
	li x18, 0x82088221
	li x19, 0x28471E4B
	li x20, 0x6D05176D
	li x21, 0xF2899150
	li x22, 0x7A3A5E03
	li x23, 0x3F85484C
	li x24, 0xC33AB85B
	li x25, 0x18221934

	cm.push {ra, s0-s9}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 92(sp)
	bne x11, x25, fail

	lw x11, 88(sp)
	bne x11, x24, fail

	lw x11, 84(sp)
	bne x11, x23, fail

	lw x11, 80(sp)
	bne x11, x22, fail

	lw x11, 76(sp)
	bne x11, x21, fail

	lw x11, 72(sp)
	bne x11, x20, fail

	lw x11, 68(sp)
	bne x11, x19, fail

	lw x11, 64(sp)
	bne x11, x18, fail

	lw x11, 60(sp)
	bne x11, x9, fail

	lw x11, 56(sp)
	bne x11, x8, fail

	lw x11, 52(sp)
	bne x11, x1, fail

test_45:
	li TESTNUM, 45

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x56BB6DB7
	li x8, 0xCD92D046
	li x9, 0x993CC7D8
	li x18, 0xBB214E6A
	li x19, 0x43DD7EA7
	li x20, 0xB4D98CBE
	li x21, 0x0AA47F57
	li x22, 0xE90632B1
	li x23, 0x97C459B3
	li x24, 0xB9B60484
	li x25, 0x286E9D05
	li x26, 0xB6025B85
	li x27, 0xF9B6AE2C

	cm.push {ra, s0-s11}, -64

	# Calculate expected sp
	li x6, 64
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 60(sp)
	bne x11, x27, fail

	lw x11, 56(sp)
	bne x11, x26, fail

	lw x11, 52(sp)
	bne x11, x25, fail

	lw x11, 48(sp)
	bne x11, x24, fail

	lw x11, 44(sp)
	bne x11, x23, fail

	lw x11, 40(sp)
	bne x11, x22, fail

	lw x11, 36(sp)
	bne x11, x21, fail

	lw x11, 32(sp)
	bne x11, x20, fail

	lw x11, 28(sp)
	bne x11, x19, fail

	lw x11, 24(sp)
	bne x11, x18, fail

	lw x11, 20(sp)
	bne x11, x9, fail

	lw x11, 16(sp)
	bne x11, x8, fail

	lw x11, 12(sp)
	bne x11, x1, fail

test_46:
	li TESTNUM, 46

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xCCDA0434
	li x8, 0x52AB1488
	li x9, 0x4CBBFC06
	li x18, 0x22C760F5
	li x19, 0xB3FC05D5
	li x20, 0x9E3267D4
	li x21, 0x6CFFA384
	li x22, 0xFD52D7E8
	li x23, 0xBA753A80
	li x24, 0xBD6693E0
	li x25, 0x94CF3AB3
	li x26, 0xCDC7969B
	li x27, 0x9D6F9ED4

	cm.push {ra, s0-s11}, -80

	# Calculate expected sp
	li x6, 80
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 76(sp)
	bne x11, x27, fail

	lw x11, 72(sp)
	bne x11, x26, fail

	lw x11, 68(sp)
	bne x11, x25, fail

	lw x11, 64(sp)
	bne x11, x24, fail

	lw x11, 60(sp)
	bne x11, x23, fail

	lw x11, 56(sp)
	bne x11, x22, fail

	lw x11, 52(sp)
	bne x11, x21, fail

	lw x11, 48(sp)
	bne x11, x20, fail

	lw x11, 44(sp)
	bne x11, x19, fail

	lw x11, 40(sp)
	bne x11, x18, fail

	lw x11, 36(sp)
	bne x11, x9, fail

	lw x11, 32(sp)
	bne x11, x8, fail

	lw x11, 28(sp)
	bne x11, x1, fail

test_47:
	li TESTNUM, 47

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0xA7D6A4A3
	li x8, 0x73F15075
	li x9, 0xFD675368
	li x18, 0x37CD7AC0
	li x19, 0x8A53471A
	li x20, 0x8A4E5AB0
	li x21, 0x4E378520
	li x22, 0xAD0A409C
	li x23, 0x7FED32DF
	li x24, 0x318BAF94
	li x25, 0x10AD3DFA
	li x26, 0x71DB2B0E
	li x27, 0xA15AB8E4

	cm.push {ra, s0-s11}, -96

	# Calculate expected sp
	li x6, 96
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 92(sp)
	bne x11, x27, fail

	lw x11, 88(sp)
	bne x11, x26, fail

	lw x11, 84(sp)
	bne x11, x25, fail

	lw x11, 80(sp)
	bne x11, x24, fail

	lw x11, 76(sp)
	bne x11, x23, fail

	lw x11, 72(sp)
	bne x11, x22, fail

	lw x11, 68(sp)
	bne x11, x21, fail

	lw x11, 64(sp)
	bne x11, x20, fail

	lw x11, 60(sp)
	bne x11, x19, fail

	lw x11, 56(sp)
	bne x11, x18, fail

	lw x11, 52(sp)
	bne x11, x9, fail

	lw x11, 48(sp)
	bne x11, x8, fail

	lw x11, 44(sp)
	bne x11, x1, fail

test_48:
	li TESTNUM, 48

	# Restore sp to initial value
	mv sp, x5

	# Set ra and s0-s11 to known values
	li x1, 0x686ADF67
	li x8, 0xFFC39CD3
	li x9, 0x5DE829D5
	li x18, 0x85AEBC8D
	li x19, 0xC4BCCE14
	li x20, 0xD85D0C9F
	li x21, 0xE6253176
	li x22, 0x83481A57
	li x23, 0x6BB38544
	li x24, 0x09EB8C7D
	li x25, 0x87A030E4
	li x26, 0xBDCD7101
	li x27, 0x76173B3A

	cm.push {ra, s0-s11}, -112

	# Calculate expected sp
	li x6, 112
	sub x7, x5, x6

	# Check sp
	bne sp, x7, fail

	# Check results
	lw x11, 108(sp)
	bne x11, x27, fail

	lw x11, 104(sp)
	bne x11, x26, fail

	lw x11, 100(sp)
	bne x11, x25, fail

	lw x11, 96(sp)
	bne x11, x24, fail

	lw x11, 92(sp)
	bne x11, x23, fail

	lw x11, 88(sp)
	bne x11, x22, fail

	lw x11, 84(sp)
	bne x11, x21, fail

	lw x11, 80(sp)
	bne x11, x20, fail

	lw x11, 76(sp)
	bne x11, x19, fail

	lw x11, 72(sp)
	bne x11, x18, fail

	lw x11, 68(sp)
	bne x11, x9, fail

	lw x11, 64(sp)
	bne x11, x8, fail

	lw x11, 60(sp)
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