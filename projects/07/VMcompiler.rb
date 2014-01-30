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


ARGV[0]

if ARGV[0][-1] == '/'
  files = Dir.entries(ARGV[0]).select { |e| e.includes?('.vm') }
elsif ARGV[0][-4..-1].include?('vm')
  files =[ARGV[0]]
else
  raise 'nope'
end

inputs = []
files.each do |e|
  inputs <<  Parser.new(e)
end

output = CodeWriter.new('')

inputs.each do |file|

  until !file.has_more_commands?
    file.advance
    case file.command_type?
    when 'C_ARITHMETIC'
      output.write_arithmetic(file.command)
    when 'C_PUSH', 'C_POP'
      output.write_push_pop(file.command_type?, file.arg1, file.arg2)
    when 'C_LABEL'
      output.write_label(file.arg1)
    when 'C_GOTO'
      output.write_goto(file.arg1)
    when 'C_IF'
      output.write_if(file.arg1)
    when 'C_FUNCTION'
      output.write_function(file.arg1, file.arg2)
    when 'C_CALL'
      output.write_call(file.arg1, file.arg2)
    when 'C_RETURN'
      output.write_return
    end

  end

end

output.close
