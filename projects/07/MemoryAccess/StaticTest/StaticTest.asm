//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop StaticTest.0 8
 @SP
 M=M-1 
 A=M 
 D=M 
@24
 M=D 
//pop StaticTest.0 3
 @SP
 M=M-1 
 A=M 
 D=M 
@19
 M=D 
//pop StaticTest.0 1
 @SP
 M=M-1 
 A=M 
 D=M 
@17
 M=D 
//push StaticTest.0 3
 @19
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1
//push StaticTest.0 1
 @17
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1
//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1
//push StaticTest.0 8
 @24
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1
//add
@SP
A=M-1
D=M
@SP
M=M-1
M=M-1
A=M
M=M+D
@SP
M=M+1
