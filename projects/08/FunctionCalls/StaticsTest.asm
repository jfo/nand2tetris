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
(Class1.set)

                @0

                D=A

                @skip.2

                D;JEQ

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
//pop Class1.0 0
 @0
D=A
@Class1.0
M=M+D
@SP
M=M-1
A=M
D=M
@Class1.0
A=M
M=D
@0
D=A
@Class1.0
M=M-D
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
//pop Class1.0 1
 @1
D=A
@Class1.0
M=M+D
@SP
M=M-1
A=M
D=M
@Class1.0
A=M
M=D
@1
D=A
@Class1.0
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
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
 (Class1.get)

                @0

                D=A

                @skip.4

                D;JEQ

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
//push Class1.0 0
 @R15
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1
//push Class1.0 1
 @R16
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
 (Class2.set)

                @0

                D=A

                @skip.7

                D;JEQ

                (loop.6)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.6

                D;JGT

                (skip.7)
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
//pop Class2.0 0
 @0
D=A
@Class2.0
M=M+D
@SP
M=M-1
A=M
D=M
@Class2.0
A=M
M=D
@0
D=A
@Class2.0
M=M-D
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
//pop Class2.0 1
 @1
D=A
@Class2.0
M=M+D
@SP
M=M-1
A=M
D=M
@Class2.0
A=M
M=D
@1
D=A
@Class2.0
M=M-D
//push constant 0
@0
D=A
@SP
A=M
M=D
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
 (Class2.get)

                @0

                D=A

                @skip.9

                D;JEQ

                (loop.8)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.8

                D;JGT

                (skip.9)
//push Class2.0 0
 @R17
 D=M 
 @SP 
 A=M
 M=D 
 @SP 
 M=M+1
//push Class2.0 1
 @R18
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

                @skip.12

                D;JEQ

                (loop.11)

                @SP

                A=M

                M=0

                @SP

                M=M+1

                D=D-1

                @loop.11

                D;JGT

                (skip.12)
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// function Class1.set 2

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

                  @Class1.set

                  0;JMP

                  (return.2)
//pop 5 0
 @SP
 M=M-1 
 A=M 
 D=M 
 @5
 M=D
 //push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// function Class2.set 2

                  @return.3

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

                  @Class2.set

                  0;JMP

                  (return.3)
//pop 5 0
 @SP
 M=M-1 
 A=M 
 D=M 
 @5
 M=D
 // function Class1.get 0

                  @return.4

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

                  @Class1.get

                  0;JMP

                  (return.4)
// function Class2.get 0

                  @return.5

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

                  @Class2.get

                  0;JMP

                  (return.5)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP
