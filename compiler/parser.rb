require 'pry'
require_relative 'libraries'

class Parser

  attr_accessor :input, :commands, :command, :command_index

  command_types = {}
  c_arithmetic = ['add', 'sub', 'neg', 'eq', 'gt', 'lt', 'and', 'or', 'not']
  c_arithmetic.each { |com| command_types[com] = 'C_ARITHMETIC' }

  command_types['push'] = 'C_PUSH'
  command_types['pop'] = 'C_POP'
  command_types['label'] = 'C_LABEL'
  command_types['goto'] = 'C_GOTO'
  command_types['if-goto'] = 'C_IF'
  command_types['function'] = 'C_FUNCTION'
  command_types['call'] = 'C_CALL'
  command_types['return'] = 'C_RETURN'
  @@lib = command_types


  def initialize(input_file)
    # Opens the input file and gets ready to parse it.
    @input =  File.open(input_file).read
    @commands = @input.gsub(/\/\/.+$/, "").delete("\r").split("\n").delete_if(&:empty?)
    @command_index = -1
  end


  def advance
    # Reads the next command from the input ana makes it the current command.
    # Should be called only if has_more_commands is true.
    # Initially there is no current command.
    if has_more_commands?
      @command_index += 1
      @command = @commands[@command_index]
    else
      raise 'Have reached EOF'
    end
  end

  def command_type?
    # Returns the type of the current VM command. C_ARITHMETIC returned for all arith meths.

    if @command != nil
      @@lib[@command.split(' ')[0].downcase]
    else
      raise 'command not supported or loaded'
    end

  end

  def arg1
    # returns the first arg of the current command
    # in the case of c_arithmetic, the command itself is returned
    # should not be called if the current command is c_return

    if command_type? == 'C_ARITHMETIC'
      @command.split(' ')[0]
    elsif command_type? != 'C_RETURN'
      @command.split(' ')[1]
    end
  end

  def arg2
    # returns the second arg of the current command
    # should not be called if the current command is c_return
    if command_type? != 'C_RETURN'
      @command.split(' ')[2]
    end
  end

  def has_more_commands?
    @command_index < @commands.length - 1
  end

end
