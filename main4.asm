.data   
    array: .word 4, 2, 3

.text 
    .globl main



main: 
    # t0 -> base address
    la $t0, array 

    # t1 -> sum 
    li $t1, 0 

    # t2 -> N 
    li $t2, 3

    # t3 -> i 
    li $t3, 0 

    # t4 -> step 
    li $t4, 1

    # t7 -> element
    
    while:  
        beq $t3, $t2, exit

        # Calculate Address 
        mul $t7, $t3, 4 
        add $t7, $t7, $t0
        lw $t7, 0($t7)

        # Sum
        add $t1, $t1, $t7

        # Increment Counter
        add $t3, $t3, $t4 

        j while

    exit: 

        # output sum    
        move $a0, $t1 
        li $v0, 1 
        syscall 

        li $v0, 10 
        syscall 

