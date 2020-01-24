#########################################################
#                                                       
# Program: factorial of number using loops      
# Name   : Hardik Harti                                  
# RollNo : 181CO220                                      
#########################################################

.data

number: .word 8
outputmessage: .asciiz "Factorial of the number is:- "

# t1 = counter
# t2 = product

.text
.globl main

main:
    lw $t0, number
    li $t1, 1 
    li $t2, 1 
    
    loop:
        bgt $t1, $t0, end   # If greater then number, go to end
        mul $t2, $t2, $t1   # t2=t2*t1
        addi $t1, 1         # t1+=1
        j loop

    end:
        la $a0, outputmessage
        li $v0, 4
        syscall

        add $a0, $0, $t2
        li $v0, 1
        syscall

        li $v0, 10
        syscall
