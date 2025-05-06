# accident 
# i outputed each indivual element instead of summing. Whoops! 
# sorry ): 


.data 
    array: .word 1, 1, 2, 3, 5, 8, 13 
    new_line: .asciiz "\n"

.text 
    .globl main 

main: 
    # A[]
    la $t0, array 

    # i 
    li $t1, 0 

    # n 
    li $t2, 7 

    while: 

        beq $t1, $t2 exit 

        # A[i]
        mul $t3, $t1, 4 
        add $t3, $t3, $t0 
        lw $t3, 0($t3)

        # Print A[i]
        move $a0, $t3  
        li $v0, 1 
        syscall 

        # \n 
        la $a0, new_line
        li $v0, 4
        syscall

        # i++
        addi $t1, 1 
        j while 

    exit: 
        li $v0, 10 
        syscall