class CodeWriter

  # these two lines evaluate external code and assign the output hash to this class var
  # eval(File.read('./libraries.rb'))
  # @@lib = make_asm_dict
  #maybe not a best practice way to do it but seems to make sense

  def initialize(output_file)
    # Opens the output file and gets ready to write into it
    @output = File.open('/Users/jeff/code/nand2tetris/projects/07/StackArithmetic/StackTest/' + output_file + '.asm', 'w+')
    @loop_count = 0
  end

  def looper
    @loop_count += 1
    @loop_count
  end

  def set_file_name(file_name)
    # Informs the code writer that the translation of a new VM file is started
  end

  def write_arithmetic(command)
    # Writes the assembly code that is the translation code of the given arithmetic command
    #
    anchor = looper

    case command
    when 'add'
      @output << "//add\n@SP\nA=M-1\nD=M\n@SP\nM=M-1\nM=M-1\nA=M\nM=M+D\n@SP\nM=M+1\n"
    when 'sub'
      @output << "//sub\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nM=M-D\n@SP\nM=M+1\n"
    when 'eq'
      @output << "//eq\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nD=D-M\nM=1\nD=D-1\n(anchor.#{anchor})\n@SP\nA=M\nM=M-1\nD=D+1\n@anchor.#{anchor}\nD;JEQ\n@SP\nM=M+1\n"
    when 'lt'
      @output << "//lt\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nD=D-M\nM=1\nD=!D\n(anchor.#{anchor})\n@SP\nA=M\nM=M-1\n@anchor.#{anchor}\nD=!D\nD;JGT\n@SP\nM=M+1\n"
    when 'gt'
      @output << "//gt\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nD=D-M\nM=1\nD=!D\n(anchor.#{anchor})\n@SP\nA=M\nM=M-1\n@anchor.#{anchor}\nD=!D\nD;JLT\n@SP\nM=M+1\n"
    when 'and'
      @output << "//and\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nM=M&D\n@SP\nM=M+1\n"
    when 'or'
      @output << "//or\n@SP\nM=M-1\nA=M\nD=M\n@SP\nM=M-1\nA=M\nM=M|D\n@SP\nM=M+1\n"
    when 'not'
      @output << "//not\n@SP\nM=M-1\nA=M\nM=!M\n@SP\nM=M+1\n"
    when 'neg'
      @output << "//neg\n@SP\nM=M-1\nA=M\nM=-M\n@SP\nM=M+1\n"
    end

  end

  def write_push_pop(command, segment, index)

    case segment
    when 'local'
      seg = 'LCL'
    when 'argument'
      seg = 'ARG'
    when 'this'
      seg = 'THIS'
    when 'that'
      seg = 'THAT'
    when 'pointer'
    when 'temp'
    when 'constant'
    when 'static'
    end

    if command == 'C_PUSH'
      if segment == 'constant'
        @output << "//push constant #{index}\n@#{index}\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n"
      else
        @output << "NORMAL PUSH FROM NAMED STACK"
      end
    elsif command == 'C_POP'
      # @output << "pop\nseg\n#{index}\n"
    end

  end

  def close
    @output.close
  end

end
