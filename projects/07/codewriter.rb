class CodeWriter

  def initialize(output_file)
    # Opens the output file and gets ready to write into it
  end

  def set_file_name(file_name)
    # Informs the code writer that the translation of a new VM file is started
  end

  def write_arithmetic(command)
    # Writes the assembly code that is the translation code of the given arithmetic command
  end

  def write_push_pop(command, segment, index)
    # Writes the assembly code that is the translation of the given command,
    # where command is either push or pop
  end

  def close
    # closes the output file
  end

end
