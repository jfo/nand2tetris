
require_relative 'code'

require 'pry'

class Parser

  include Code

  attr_reader :asm, :commands, :command

  def initialize
    #opens the input file or stream and prepares to parse it
    @asm = File.open(ARGV[0]).read
    strip_comments
    @commands = @asm.split.reverse
  end

  def has_more_commands?
    @commands.length > 0
  end

  def advance
    @command = @commands.pop if has_more_commands?
  end

  def command_type
    # returns the type of the current command
    if @command != nil
      if @command.slice(0) == '@'
        'A_COMMAND'
      elsif @command.slice(0) == '('
        'L_COMMAND'
      else
        'C_COMMAND'
      end
    end
  end

  def symbol
    # returns the symbol of decimal Xxx of the current command @Xxx or Xxx.
    # should be called only when commandType() is A_COMMAND or L_COMMAND
  end

  def dest
    #returns the dest mnemonic in the current c-command (8 poss)
    #should be called only when C command is C_command
    if command_type == 'C_COMMAND'
      @command.match(/^[^\=]*/).to_s
    else
      raise ArgumentError, 'Current command is not a C_COMMAND'
    end
  end

  def comp
    #returns the comp mnemonic in the current c command (28 possibilities)
    #should be called only when commandtype is C

    if command_type == 'C_COMMAND'
      @command.match(/(.)(;)|(=)(.)/).to_s.gsub!(/\W+/, '')
    else
      raise ArgumentError, 'Current command is not a C_COMMAND'
    end

  end

  def jump
    # returns the jump mnemonic in the current c command, 8 possibilities
    # should be called only when the command type is c

    if command_type == 'C_COMMAND'
      @command.match(/(;)(.+)/).to_s.gsub!(/\W+/, '')
    else
      raise ArgumentError, 'Current command is not a C_COMMAND'
    end
  end

  private

  def strip_comments
    @asm = @asm.gsub(/\/\/.+$/, "")
  end

end

ARGV[0] = '../pong/pong.asm'
x = Parser.new
binding.pry
