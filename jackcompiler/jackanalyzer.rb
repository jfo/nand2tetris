#!/usr/bin/env ruby

require 'pry'

require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

# raise 'No file specified' if ARGV.length == 0


if ARGV[0].nil?
  arg = "hello world"
else
  arg = ARGV[0]
end

binding.pry

input = JackTokenizer.new(arg)
name = arg.sub(/.jack/, '') + '.xml'

# will accept name of directory instead later on





# output = File.open(name, 'w')
# output.puts(Parser.new(ARGV[0]).export_compiled)
# output.close


