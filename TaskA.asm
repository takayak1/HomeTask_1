.text
.globl main

main:
    li a7, 5
    ecall
    mv t0, a0

    li t1, 5

    beq t0, t1, equal

    li a0, 0
    j print

equal:
    li a0, 1

print:
    li a7, 1
    ecall

    li a7, 10
    ecall