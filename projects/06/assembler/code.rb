module Code

  module_function

  def tester
    puts 'derp'
  end

  def dest(dest)
    case dest
    when nil
      '000'
    when 'M'
      '001'
    when 'D'
      '010'
    when 'MD'
      '011'
    when 'A'
      '100'
    when 'AM'
      '101'
    when 'AD'
      '110'
    when 'AMD'
      '111'
    end
  end

  def comp(comp)
    case comp
    when '0'
      main = '101010'
    when '1'
      main = '111111'
    when '-1'
      main = '111010'
    when 'D'
      main = '001100'
    when 'A' || 'M'
      main = '110000'
    when '!D'
      main = '001101'
    when '!A' || '!M'
      main = '110001'
    when '-D'
      main = '001111'
    when '-A' || '-M'
      main = '110011'
    when 'D+1'
      main = '011111'
    when 'A+1' || 'M+1'
      main = '110111'
    when 'D-1'
      main = '001110'
    when 'A-1' || 'M-1'
      main = '110010'
    when 'D+A' || 'D+M'
      main = '000010'
    when 'D-A' || 'D-M'
      main = '010011'
    when 'A-D' || 'M-D'
      main = '000111'
    when 'D&A' || 'D&M'
      main = '000000'
    when 'D|A' || 'D|M'
      main = '010101'
    end

    if comp.include('M')
      return '1' + main
    elsif comp.include('A')
      return '0' + main
    end
  end
end
