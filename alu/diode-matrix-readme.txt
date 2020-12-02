CS
Zero 		00
Previous Carry	01
One		10
Zero		11

LHS
Unchanged	00
Shift Left	01
Shift Right	10
Zero		11

RHS
RHS		1100
~RHS		0011
Zero		0000
255		1111
LHS·RHS	(AND)	1000
LHS+RHS	(OR)	1110
LHS⊕RHS	(XOR)	0111

                  L	R
                C H	H
                S S	S
0 noop		0000	0000 ; Carry=0, LHS=0, RHS=0
1 shift left  	0001	0000 ; Carry=0, LHS=Shift Left, RHS=0
2 shift right	0010	0000 ; Carry=0, LHS=Shift Right, RHS=0
3 add		0000	1100 ; Carry=0, LHS=LHS, RHS=RHS
4 addc		0100	1100 ; Carry=Previous, LHS=LHS, RHS=RHS
5 inc		1000	0000 ; Carry=1, LHS=LHS, RHS=0
6 incc		0100	0000 ; Carry=Previous, LHS=LHS, RHS=0
7 sub		1000	0011 ; Carry=1, LHS=LHS, RHS=~RHS
8 subb		0100	0011 ; Carry=Previous, LHS=LHS, RHS=~RHS
9 dec		0000	1111 ; Carry=0, LHS=LHS, RHS=255

