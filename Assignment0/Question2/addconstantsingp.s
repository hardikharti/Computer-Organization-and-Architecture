###################################
#
# Program: To add two constants and save in gp
# Name 	 : Hardik Harti
# RollNo : 181CO220
###################################

.data
	number1: .word 10
	number2: .word 20

.text
.globl main

main:
    lui $t0, 4096
    lw $t1, number1		# t1=number1
    lw $t2, number2		# t2=number2
    sw $t1, 0($t0)	
    sw $t2, 0($gp)
    add $t3, $t1 $t2	# t3 = t1 + t2
    sw $t3, 396($t0) 	

# To display the result
	li $v0, 4
	add $a0, $zero, $t3
	syscall