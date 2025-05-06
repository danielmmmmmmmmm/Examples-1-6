.data 
    array: .word 1, 2, 3, 4, 5, 6

.text 
    .globl main 

main: 

    # base
    la $t0, array 

    # i 
    li $t1, 0 

    while: 


        # A[i]
        mul $t2, $t1, 4
        add $t2, $t2, $t0 
        lw $t2, 0($t2)

        # A[i] < 4
        slti $t3, $t2, 4
        beqz $t3, exit 

        

        # i++
        addi $t1, $t1, 1

        j while
    
    exit: 
        
        move $a0, $t2
        li $v0, 1 
        syscall
        


        li $v0, 10 
        syscall 
