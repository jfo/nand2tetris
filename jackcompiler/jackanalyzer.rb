#!/usr/bin/env ruby
require 'pry'
require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

raise 'No input files specified' if ARGV.empty?

if ARGV[0][-1] == '/'
  files = Dir.entries(ARGV[0]).select { |e| e.include?('.jack') }
  files.map! {|name| ARGV[0] + name }
elsif ARGV[0][-5..-1].include?('jack')
  files = [ARGV[0]]
else
  raise 'nope'
end

# name = ARGV[0].sub(/.jack/, '') + '.xml'
name = '/Users/jeff/code/nand2tetris/jackcompiler/output.xml'

compiled = ''

files.each do |file|
  x = CompilationEngine.new(JackTokenizer.new(file))
  x.compile_class
  compiled += x.output

end

File.open(name, 'w') { |file| file.write(compiled) }

