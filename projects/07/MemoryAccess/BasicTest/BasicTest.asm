//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop LCL 0
 @0
D=A
@LCL
M=M+D
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
@0
D=A
@LCL
M=M-D
//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop ARG 2
 @2
D=A
@ARG
M=M+D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@2
D=A
@ARG
M=M-D
//pop ARG 1
 @1
D=A
@ARG
M=M+D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@1
D=A
@ARG
M=M-D
//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THIS 6
 @6
D=A
@THIS
M=M+D
@SP
M=M-1
A=M
D=M
@THIS
A=M
M=D
@6
D=A
@THIS
M=M-D
//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop THAT 5
 @5
D=A
@THAT
M=M+D
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
@5
D=A
@THAT
M=M-D
//pop THAT 2
 @2
D=A
@THAT
M=M+D
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
@2
D=A
@THAT
M=M-D
//push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop 11 6

                    @SP
 M=M-1 
 A=M 
 D=M 
 @11
 M=D
 //push LCL 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 5
@5
D=A
@THAT
A=M+D
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
//push ARG 1
@1
D=A
@ARG
A=M+D
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
//push THIS 6
@6
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS 6
@6
D=A
@THIS
A=M+D
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
//push 11 6

                          @11
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1//add
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