.data
array: .space 84

.text
.globl main

main:
    la t0, array
    li t1, 21
    li t2, 0

read_loop:
    bge t2, t1, finish

    li a7, 5
    ecall
    mv t3, a0

    beqz t3, finish

    sw t3, 0(t0)

    addi t0, t0, 4

    addi t2, t2, 1

    j read_loop

finish:
    li a7, 10
    ecall