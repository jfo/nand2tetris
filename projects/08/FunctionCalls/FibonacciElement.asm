@256 
 D=A 
 @SP 
 M=D 
(sys.init)

                @0

                D=A

                @skip.2

                D,JEQ

                (loop.1)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.1

                D;JGT

                (skip.2)
(Main.fibonacci)

                @0

                D=A

                @skip.4

                D,JEQ

                (loop.3)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.3

                D;JGT

                (skip.4)
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@IF_TRUE
D;JNE
// goto IF_FALSE
@IF_FALSE
0;JMP
// label IF_TRUE
(IF_TRUE)
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL

                A=M

                D=M

                @R13

                M=D


                @R13

                M=M-1

                M=M-1

                M=M-1

                M=M-1

                M=M-1

                A=M

                D=M

                @R14

                M=D


                @SP

                M=M-1

                A=M

                D=M

                @ARG

                A=M

                M=D


                @ARG

                D=M

                @SP

                M=D+1


                @R13

                M=M+1

                M=M+1

                M=M+1

                M=M+1

                A=M

                D=M

                @THAT

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @THIS

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @ARG

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @LCL

                M=D


                @R14

                A=M
                0;JMP

                // label IF_FALSE
(IF_FALSE)
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
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
// function Main.fibonacci 1

                  @ret.1

                  D=A

                  @SP

                  A=M

                  M=D

                  //ugh
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
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 0
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP

                  A=M

                  D=M

                  @1

                  D=D-A

                  @5

                  D=D-A

                  @ARG

                  M=D

                  @SP

                  D=M

                  @LCL

                  M=D

                  @Main.fibonacci

                  0;JMP

                  (ret.1)
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 1
@1
D=A
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
// function Main.fibonacci 1

                  @ret.2

                  D=A

                  @SP

                  A=M

                  M=D

                  //ugh
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
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 0
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP

                  A=M

                  D=M

                  @1

                  D=D-A

                  @5

                  D=D-A

                  @ARG

                  M=D

                  @SP

                  D=M

                  @LCL

                  M=D

                  @Main.fibonacci

                  0;JMP

                  (ret.2)
@LCL

                A=M

                D=M

                @R13

                M=D


                @R13

                M=M-1

                M=M-1

                M=M-1

                M=M-1

                M=M-1

                A=M

                D=M

                @R14

                M=D


                @SP

                M=M-1

                A=M

                D=M

                @ARG

                A=M

                M=D


                @ARG

                D=M

                @SP

                M=D+1


                @R13

                M=M+1

                M=M+1

                M=M+1

                M=M+1

                A=M

                D=M

                @THAT

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @THIS

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @ARG

                M=D


                @R13

                M=M-1

                A=M

                D=M

                @LCL

                M=D


                @R14

                A=M
                0;JMP

                (Sys.init)

                @0

                D=A

                @skip.10

                D,JEQ

                (loop.9)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.9

                D;JGT

                (skip.10)
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// function Main.fibonacci 1

                  @ret.3

                  D=A

                  @SP

                  A=M

                  M=D

                  //ugh
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
//push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS 0
@0
D=A
@THIS
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT 0
@0
D=A
@THAT
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP

                  A=M

                  D=M

                  @1

                  D=D-A

                  @5

                  D=D-A

                  @ARG

                  M=D

                  @SP

                  D=M

                  @LCL

                  M=D

                  @Main.fibonacci

                  0;JMP

                  (ret.3)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP
