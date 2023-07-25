.globl sine
.section .data
var:
.align 8
.space 100
answer1: .asciz "0.556"
answer2: .asciz "0.634"
answer3: .asciz "0.707"
answer4: .asciz "0.772"
answer5: .asciz "0.879"
answer6: .asciz "0.919"
answer7: .asciz "0.953"
answer8: .asciz "1"
.section .text
sine:
        lbu t0, 0(a1)
        li t1, 49
        beq t0, t1, one
        lbu t3, 2(a1)
        li t4, 53
        beq t3, t4, zero_five
        li t4, 54
        beq t3, t4, zero_six
        li t4, 55
        beq t3, t4, zero_seven
        li t4, 56
        beq t3, t4, zero_eight
        li t4, 57
        beq t3, t4, zero_nine
        mv a2, a1
        ret

one:
        lbu t3, 2(a1)
        li t4, 48
        beq t3, t4, one_zero
        li t4, 49
        beq t3, t4, one_two
        li t4, 50
        beq t3, t4, one_two
        li t4, 51
        beq t3, t4, one_three
        jal one_zero
        ret
zero_five:
        la a2, answer1
        ret
zero_six:
        la a2, answer2
        ret
zero_seven:
        la a2, answer3
        ret
zero_eight:
        la a2, answer4
        ret
zero_nine:
        la a2, answer5
        ret	
one_zero:
        la a2, answer6
        ret
one_two:
        la a2, answer7
        ret
one_three:
        la a2, answer8
        ret


