# #!/usr/bin/env ruby

require 'pry'
require_relative 'tokenizer.rb'
require_relative 'compilationengine.rb'

# raise 'No file specified' if ARGV.length == 0


if ARGV[0].nil?
  arg = "hello world"
else
  arg = ARGV[0]
end


input = JackTokenizer.new()
#engine = CompilationEngine.new()
name = arg.sub(/.jack/, '') + '.xml'
output = File.open(name, 'w')

# will accept name of directory instead later on


while input.has_more_tokens?
  type = input.token_type

  puts type.upcase
  puts '---------'
  case type.downcase

  when 'keyword'
    out = input.key_word
  when 'symbol'
    out = input.symbol
  when 'identifier'
    out = input.identifier
  when 'int_const'
    out = input.int_val
  when 'string_const'
    out = input.string_val
  end

  puts out
  puts
  gets
  input.advance

end



# output = File.open(name, 'w')
# output.puts(Parser.new(ARGV[0]).export_compiled)
# output.close


