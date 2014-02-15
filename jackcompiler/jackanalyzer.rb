#!/usr/bin/env ruby

require 'pry'
require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

# raise 'No file specified' if ARGV.length == 0


if ARGV[0].nil?
  arg = "MainT"
else
  arg = ARGV[0]
end



tokens = JackTokenizer.new('/Users/jeff/code/nand2tetris/projects/10/ArrayTest/Main.jack')
# engine = CompilationEngine.new(tokens.output)
# input.xml_tokenize

name = arg.sub(/.jack/, '') + '.xml'
File.open(name, 'w') { |file| file.write(tokens.output) }

# binding.pry

# will accept name of directory instead later on

# output = File.open(name, 'w')
# output.puts(Parser.new(ARGV[0]).export_compiled)
# output.close
