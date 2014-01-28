require 'pry'
require_relative 'libraries'

class Parser

  attr_accessor :input, :commands, :command, :command_index

  # these two lines evaluate external code and assign the output hash to this class var
  eval(File.read('./libraries.rb'))
  @@lib = make_command_dict
  #maybe not a best practice way to do it but seems to make sense


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
