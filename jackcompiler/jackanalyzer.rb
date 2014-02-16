#!/usr/bin/env ruby
require 'pry'
require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

ARGV[0] = '/Users/jeff/code/nand2tetris/projects/10/ArrayTest/Main.jack'



if ARGV[0][-1] == '/'
  files = Dir.entries(ARGV[0]).select { |e| e.include?('.jack') }
elsif ARGV[0][-5..-1].include?('jack')
  files =[ARGV[0]]
else
  raise 'nope'
end



name = ARGV[0].sub(/.jack/, '') + '.xml'
name = '/Users/jeff/code/nand2tetris/jackcompiler/MainT.xml'

tokens = JackTokenizer.new(ARGV[0])
tokens.xml_ize
compiled = CompilationEngine.new(JackTokenizer.new(ARGV[0]))

# engine = CompilationEngine.new(tokens.output)

File.open(name, 'w') { |file| file.write(tokens.output) }


binding.pry
