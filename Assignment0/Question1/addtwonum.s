###################################
#
# Program: To add two constants
# Name 	 : Hardik Harti
# RollNo : 181CO220
# 
###################################

.data
	n1: .word 1000000	# number1 = 1000000
	n2: .word 2000000	# number1 = 2000000

.text
.globl main

main:
	lw $t0, n1		# t0 = n1
	lw $t1, n2		# t1 = n2

	add $t2, $t0, $11 	 # t2 = t0 + t1
	
# To display the result
	li $v0, 1
	move $a0, $t2
	syscall