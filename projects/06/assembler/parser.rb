require_relative 'code'
require_relative 'symboltable'
require 'pry'

class Parser
  include Code

  attr_reader :asm, :commands, :command, :compiled, :symbol_table

  def initialize(asmfilepath)
    #opens the input file or stream and prepares to parse it
    @asm = File.open(asmfilepath).read
    strip_comments
    @commands = @asm.split.reverse
    @compiled = []
    @symbol_table = SymbolTable.new
  end

  def has_more_commands?
    @commands.length > 0
  end

  def advance
    if has_more_commands?
      @command = @commands.pop
    else
      @command = nil
    end
  end

  def command_type
    # returns the type of the current command
    if @command != nil
      if @command[0] == '@'
        'A_COMMAND'
      elsif @command[0] == '('
        'L_COMMAND'
      else
        'C_COMMAND'
      end
    end
  end

  def build_symbol_table
    i = 0
    @commands.reverse_each do |command|
      if command[0] == '('
        @symbol_table.table[command.delete('(').delete(')')] = i
      else
        i += 1
      end
    end

    # @commands.each { |com| @commands.delete(com) if com[0] == '(' }

    var_mem = 16

    @commands.reverse_each do |command|
      var = command.scan(/[^0-9@]/).join.to_s
      if command[0] == '@' && @symbol_table.table.keys.include?(var) == false && var.length > 0
        var_mem += 1 if @symbol_table.table.values.include?(var_mem)
        @symbol_table.table[var] = var_mem
        var_mem += 1
      end
    end
    @commands.delete_if {|element| element[0] == '(' }

  end

  def symbol
    # returns the symbol of decimal Xxx of the current command @Xxx or Xxx.
    # should be called only when commandType() is A_COMMAND or L_COMMAND
  end

  def dest
    #returns the dest mnemonic in the current c-command (8 poss)
    #should be called only when C command is C_command
    if command_type =='C_COMMAND' && @command.include?('=')
      @command.match(/^\S+=/).to_s.delete('=')
    else
      nil
    end
  end

  def comp
    #returns the comp mnemonic in the current c command (28 possibilities)
    #should be called only when commandtype is C
    #
    test_command = @command
    if command_type == 'C_COMMAND'
      test_command = @command.sub(/^\S+=/, '') if test_command.include?('=')
      test_command = @command.sub(/;\S+$/, '') if test_command.include?(';')
      test_command.to_s
    end
  end

  def jump
    test_command = @command
    puts 'derp!'
    if command_type == 'C_COMMAND' && test_command.include?(';')
      test_command = @command.sub(/^\S+;/, '')
      test_command.to_s
    else
      nil
    end
  end

  def compile
    if command_type == 'A_COMMAND'

      bin = @command.scan(/[0-9]/).join.to_i.to_s(2)
      bin = bin.reverse.concat('0').reverse until bin.length == 16
      @compiled << bin

    elsif command_type == 'C_COMMAND'
      bin = []
      bin << '111'
      bin << compile_comp(comp)
      bin << compile_dest(dest)
      bin << compile_jump(jump)
      @compiled << bin.join
    elsif command_type  =='L_COMMAND'
      # raise 'havent implemented yet'
    else
      # raise 'wrong arguments or something'
    end
    advance
    bin
  end

  def export_compiled
    advance
    compile until @command == nil
    @compiled.join("\n")
  end

  private

  def strip_comments
    @asm = @asm.gsub(/\/\/.+$/, "")
    @asm = @asm.delete("\n")
    # @asm = @asm.delete("\r")
  end
end

x = Parser.new('pong.asm')
binding.pry
