########################################
# 										#
# Program: To add 10 two digit numbers	
# Name 	 : Hardik Harti					
# RollNo : 181CO220						
########################################

.data

array: .word 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
# array =[10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
message: .asciiz "Result: "

.text
.globl main

# t0=counter
# t1=sum
# const t2=10 [to compare the counter]
# t3 = address of array elements


main:
	addi $t0, $0, 0            # initialize i=0
	addi $t1, $0, 0            # initialize sum=0
	addi $t2, $0, 10           # initialize t2=10
	la $t3, array              # load address of array

# Iterative loop
loop:
	beq $t0, $t2, end     	# if(counter==10) exit else continue
	lw $t4, 0($t3)         	# t4=t3[counter]
	add $t1, $t1, $t4     	# sum+=t4
	add $t0, $t0, 1        	# counter+1
	add $t3, $t3, 4        	# t3+=(t3+4) point to next element
	j loop
    
end:
	addi $v0, $0, 4   
	la $a0, message
	syscall

	addi $v0, $0, 1    
	add $a0, $t1, $0
	syscall
