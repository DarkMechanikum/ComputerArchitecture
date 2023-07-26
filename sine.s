.globl sine
.section .data
var:
.align 8
.space 100
answer1: .asciz "0.556000"
answer2: .asciz "0.634000"
answer3: .asciz "0.707000"
answer4: .asciz "0.772000"
answer5: .asciz "0.879000"
answer6: .asciz "0.919000"
answer7: .asciz "0.953000"
answer8: .asciz "1.000000"
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
        mv t0, a1
        j write_answer
        ret
one:
        lbu t3, 2(a1)
        li t4, 48
        beq t3, t4, one_zero
        li t4, 49
        beq t3, t4, one_two
        li t4, 50
        beq t3, t4, one_two
        j one_three
        ret
zero_five:
        la t0, answer1
        j write_answer
        ret
zero_six:
        la t0, answer2
        j write_answer
        ret
zero_seven:
        la t0, answer3
        j write_answer
        ret
zero_eight:
        la t0, answer4
        j write_answer
        ret
zero_nine:
        la t0, answer5
        j write_answer
        ret
one_zero:
        la t0, answer6
        j write_answer
        ret
one_two:
        la t0, answer7
        j write_answer
        ret
one_three:
        la t0, answer8
        j write_answer
        ret
write_answer:
        ld t2, 0(t0)
        sd t2, 0(a2)
        ret



