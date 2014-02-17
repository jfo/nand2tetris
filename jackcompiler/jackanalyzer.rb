 #!/usr/bin/env ruby
require 'pry'
require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

ARGV[0] = '/Users/jeff/code/nand2tetris/projects/10/ArrayTest/Main.jack'

if ARGV[0][-1] == '/'
  files = Dir.entries(ARGV[0]).select { |e| e.include?('.jack') }
  files.map! {|name| ARGV[0] + name }
elsif ARGV[0][-5..-1].include?('jack')
  files = [ARGV[0]]
else
  raise 'nope'
end

# name = ARGV[0].sub(/.jack/, '') + '.xml'
name = '/Users/jeff/code/nand2tetris/jackcompiler/MainT.xml'

compiled = ''

files.each do |file|
  x = CompilationEngine.new(JackTokenizer.new(file))
  x.compile_class
  compiled += x.output
end

File.open(name, 'w') { |file| file.write(compiled) }

# binding.pry
