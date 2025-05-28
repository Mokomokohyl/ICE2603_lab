addi x15, x15, 1
sw x29,1024(x16)         
lw x29,1024(x16)         
sub x17,x15,x14
nop
nop
beq x17,x0,label
add x15,x11,x14
sub x15,x30,x14
label:nop
