
0f000593: addi x11, x0, 240    # x11 <- 0xF0, IOPORT 0 byte addr
0f400613: addi x12, x0, 244    # x12 <- 0xF4, IOPORT 1 byte addr
08800693: addi x13, x0, 136    # x13 <- 0x88, IOPORT 2 byte addr
loop:
0005a703: lw x14, 0(x11)       # x14 <- [F0]
00062783: lw x15, 0(x12)       # x15 <- [F4]
40f76833: even x16, x14, x15   # x16 <- even check bit of x14[7:0] and x15[7:0]
00e5a023: sw x14, 0(x11)       # [F0] <- x14
00f62023: sw x15, 0(x12)       # [F4] <- x15
0106a023: sw x16, 0(x13)       # [88] <- x16
fe9ff06f: j loop               # Loop, goto pc=0xc

