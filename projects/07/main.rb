#!/usr/bin/env ruby




# the main program should construct a parser to parse the vm input file
# and a codewriter to generate code into the corresponding output file.
# it should then arch through the vm commands in the input file and generate
# assembly code for each one of them.

# if the programs argument is a directory name rather than a file name, the main program should
# should process all the .vm fies in this directory. in doing so, it should use a seperate
# Parser for each file and a single codewriter to output




require_relative 'parser'
require_relative 'codewriter'

input = Parser.new('/users/jeff/code/nand2tetris/projects/08/FunctionCalls/SimpleFunction/SimpleFunction.vm')

# name = ARGV[0].sub(/\..+$/, '')

output = CodeWriter.new('/users/jeff/code/nand2tetris/projects/08/FunctionCalls/SimpleFunction/SimpleFunction')


until !input.has_more_commands?
  input.advance
  case input.command_type?
  when 'C_ARITHMETIC'
    output.write_arithmetic(input.command)
  when 'C_PUSH', 'C_POP'
    output.write_push_pop(input.command_type?, input.arg1, input.arg2)
  when 'C_LABEL'
    output.write_label(input.arg1)
  when 'C_GOTO'
    output.write_goto(input.arg1)
  when 'C_IF'
    output.write_if(input.arg1)
  when 'C_FUNCTION'
    output.write_function(input.arg1, input.arg2)
  when 'C_CALL'
    output.write_call(input.arg1, input.arg2)
  when 'C_RETURN'
    output.write_return
  end

end

output.close
