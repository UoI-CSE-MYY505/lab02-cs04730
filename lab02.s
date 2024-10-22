
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
    add s0, zero, zero # Initialisation of s0 with 0
loop:
    beq a1, zero, done # Checking if index equal to zero to end program
    lw t1, 0(a0)
    bne t1, a2, nextIndex # Skip right to Index a1 decrease if current number doesn't match
    add s0, a0, zero # Saves address of latest matching number

nextIndex: # Decreases Index, continues to next 4 bits of the array and repeats the loop
    addi a1, a1, -1
    addi a0, a0, 4
    j loop

#-----------------------------
done:
    addi a7, zero, 10 
    ecall
