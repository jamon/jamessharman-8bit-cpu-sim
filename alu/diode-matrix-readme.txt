; Carry Select
Zero            00
Previous Carry  01
One             10
Zero            11

; LHS Select
Unchanged       00
Shift Left      01
Shift Right     10
Zero            11

; RHS Select
RHS             1100
~RHS            0011
Zero            0000
255             1111
LHS·RHS  (AND)  1000
LHS+RHS  (OR )  1110
LHS⊕RHS (XOR)  0110




                        L       R
                      C H       H
                      S S       S     Carry     LHS       RHS
0   noop              0000      0000  0         0         0
1   shift left        0001      0000  0         <<        0
2   shift right       0010      0000  0         >>        0
3   add               0000      1100  0         LHS       RHS
4   addc              0100      1100  Previous  LHS       RHS
5   inc               1000      0000  1         LHS       0
6   incc              0100      0000  Previous, LHS       0
7   sub               1000      0011  1         LHS       ~RHS
8   subb              0100      0011  Previous  LHS       ~RHS
9   dec               0000      1111  0         LHS       255
a   and               0011      1000  0         0         LHS·RHS  (AND)
b   or                0011      1110  0         0         LHS+RHS  (OR )
c   xor               0011      0110  0         0         LHS⊕RHS (XOR)
d   not               0011      0011  0         0         ~RHS
e   clear carry       0011      0000  0         0         0










~OE	LogicSelect	B		A		Y
# output enable test
1	0x0		0		0		z

# always LOW
0	0x0		0b11001100	0b10101010	0b00000000
# nor
0	0x1		0b11001100	0b10101010	0b00010001
# A !B
0	0x2		0b11001100	0b10101010	0b00100010
# !B Pass
0	0x3		0b11001100	0b10101010	0b00110011
# !A B
0	0x4		0b11001100	0b10101010	0b01000100
# !A Pass
0	0x5		0b11001100	0b10101010	0b01010101
# XOR
0	0x6		0b11001100	0b10101010	0b01100110
# NAND
0	0x7		0b11001100	0b10101010	0b01110111
# AND
0	0x8		0b11001100	0b10101010	0b10001000
# XNOR
0	0x9		0b11001100	0b10101010	0b10011001
# A Pass
0	0xa		0b11001100	0b10101010	0b10101010
# !B+A
0	0xb		0b11001100	0b10101010	0b10111011
# B Pass
0	0xc		0b11001100	0b10101010	0b11001100
# B+!A
0	0xd		0b11001100	0b10101010	0b11011101
# OR
0	0xe		0b11001100	0b10101010	0b11101110
# always HIGH
0	0xf		0b11001100	0b10101010	0b11111111
