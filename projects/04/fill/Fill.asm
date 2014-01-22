@SCREEN
D=A
@address
M=D
@8192
D=A
@8
M=D
@0
D=!A
@address
A=M
M=D
@address
M=M+1
@8
M=M-1
M, JGT
@18
1, JEQ
@SCREEN
D=A
@address
M=D
@8192
D=A
@28
M=D
@0
D=A
@address
A=M
M=D
@address
M=M+1
@28
M=M-1
M, JGT
@KBD
D=M
@0
D, JNE
@22
0, JMP
