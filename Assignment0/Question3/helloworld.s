#########################################################
#                                                       
# Program: print Hello World                         
# Name   : Hardik Harti                                  
# RollNo : 181CO220                                  
#########################################################


.data
	message: .asciiz "Hello World\n"

.text
.globl main

main:
	li $v0, 4
	la $a0, message
	syscall