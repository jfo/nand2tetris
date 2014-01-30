// sys init
@256
 D=A
@SP
M=D
// function Sys.init 0

                  @return.1

                  D=A

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @LCL

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @ARG

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @THIS

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @THAT

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @SP

                  D=M

                  @0

                  D=D-A

                  @5
                  D=D-A
                  @ARG

                  M=D


                  @SP

                  D=M

                  @LCL

                  M=D

                  @Sys.init

                  0;JMP

                  (return.1)
(test)

                @2

                D=A


                @skip.2

                D; JLE



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
@LCL

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


                @skip.5

                D; JLE



                (loop.4)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1
                @loop.4

                D;JGT

                (skip.5)
//push constant 2
@2
D=A
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
// function test 2

                  @return.2

                  D=A

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @LCL

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @ARG

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @THIS

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @THAT

                  D=M

                  @SP

                  A=M

                  M=D

                  @SP

                  M=M+1


                  @SP

                  D=M

                  @2

                  D=D-A

                  @5
                  D=D-A
                  @ARG

                  M=D


                  @SP

                  D=M

                  @LCL

                  M=D

                  @test

                  0;JMP

                  (return.2)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP
