#########################################
# 										
# Program: To reverse a string       	
# Name 	 : Hardik Harti					
# RollNo : 181CO220
#########################################

.data
OriginalString: .asciiz "CSE department"
newline: .asciiz "\n" 

.text
.globl main

main:

	# Print Original String
	li $v0, 4
	la $a0, OriginalString       
	syscall


	# New Line
	li $v0, 4
	la $a0, newline
	syscall


	# To get length of string
	li $t2, 0  	
	strlen:                
		lb $t0, OriginalString($t2) 
		add $t2, $t2, 1
		bne $t0, $zero, strlen


	# Print Reversed String
	li $v0, 11         
	loop:
		sub     $t2, $t2, 1     
		la      $t0, OriginalString($t2)
		lb      $a0, ($t0)
		syscall

	bnez    $t2, loop
	li      $v0, 10            
	syscall