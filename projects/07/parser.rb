class Parser

  def initialize(input_file)
    # Opens the input file and gets ready to parse it.
  end

  def has_more_commands
    # Are there more commands on the input?
  end

  def advance
    # Reads the next command from the input ana makes it the current command.
    # Should be called only if has_more_commands is true.
    # Initially there is no current command.
  end

  def command_type
    # Returns the type of the current VM command. C_ARITHMETIC returned for all arith meths.
  end

  def arg1
    # returns the first arg of the current command
    # in the case of c_arithmetic, the command itself is returned
    # should not be called if the current command is c_return
  end

  def arg2
    # returns the second arg of the current command
    # should not be called if the current command is c_return
  end

end
