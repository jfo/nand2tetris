# this file will contain hashes for translation tables for methods to utilize. It will be cleaner that way.

def make_command_dict
  command_types = Hash.new

  c_arithmetic = ['add', 'sub', 'neg', 'eq', 'gt', 'lt', 'and', 'or', 'not']
  c_arithmetic.each { |com| command_types[com] = 'C_ARITHMETIC' }

  command_types['push'] = 'C_PUSH'
  command_types['pop'] = 'C_POP'

  command_types
end


def make_asm_dict

  #code

end
