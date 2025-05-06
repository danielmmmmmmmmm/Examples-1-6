.data 


.text 
    .globl main 

main: 
    # i & j 
    li $t0, 1 
    li $t1, 2 

    # g & h 
    li $t2, 3 
    li $t3, 4 

    # $t4 -> f 

    # i < j
    slti $t5, $t0, 10
    beqz $t5, else 
    add $t4, $t3, $t2 
    j end 
    else: 
        sub $t4, $t3, $t2

    end: 
        li $v0, 10 
        syscall