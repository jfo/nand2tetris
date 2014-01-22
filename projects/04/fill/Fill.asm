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
@KBD
D=M
@0
D, JNE
@SCREEN
D=A
@address
M=D
@8192
D=A
@30
M=D
@0
D=A
@address
A=M
M=D
@address
M=M+1
@30
M=M-1
M, JGT
@KBD
D=M
@0
D, JNE
@24
0, JMP
