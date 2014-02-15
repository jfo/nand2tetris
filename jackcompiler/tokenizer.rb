require 'pry'

class JackTokenizer
  attr_accessor :current_token, :tokens, :lines, :xml

  @@symbols = '{}[]().,;+-*/&|<>=~'.split(//)
  @@keywords = "class
                constructor
                function
                method
                field
                static
                var
                int
                char
                boolean
                void
                true
                false
                null
                this
                let
                do
                if
                else
                while
                return".split

  def initialize(filename = '/Users/jeff/code/nand2tetris/projects/10/ArrayTest/Main.jack')
    # opens the input file and gets ready to tokenize it

    @nest = []
    @xml = ''
    @lines = clean_lines(File.open(filename, 'r').read)
    @tokens = tokenize(@lines)
    advance

  end

  def has_more_tokens?
    @tokens.length > 0
  end

  def advance
    if has_more_tokens?
      @current_token = @tokens.shift
    end
  end

  def token_type

    if @@symbols.include?(@current_token)
      "SYMBOL"
    elsif @@keywords.include?(@current_token)
      "KEYWORD"
    elsif @current_token[0] == '"'
      "STRING_CONST"
    elsif @current_token.is_a?(Integer)
      "INT_CONST"
    else
      "IDENTIFIER"
    end

  end



    def key_word
      # returns the keyword which is the current token should be called only when token type is keyword
      @current_token
    end

    def symbol
      # returns the character which is the current token, should be called only when the current token is symbol
      @current_token
    end

    def identifier
      # returns the identifier which is the current token should be called only when token type is identifier
      @current_token
    end

    def int_val
      # returns the integer value of the current token. should be called only if the token type is int_const.
      @current_token.to_i
    end

    def string_val
      # returns the string value of the current token, without the double quotes. should be called only when token type is string_const.
      out = []
      self.advance

      until @current_token == '"'
        out << @current_token
        advance
      end

      advance
      return out.join(' ')
    end


    def clean_lines(input)
      tokens = input.sub(/\/\*.*\*\//, '').split("\n")
      tokens.collect! do |e|
        e.sub(/\/\/.*$/, '').sub("\r", '').sub(/^\s*/, '')
      end

      tokens.reject! { |c| c.empty? }
    end


    def tokenize(lines)
      lines.map! { |line| line.split(//) }

      lines.each do |linearray|
        linearray.map! do |char|
          if @@symbols.include?(char) || char == '"'
            char = (' ' + char + ' ')
          else
            char
          end
        end
      end

      lines.map! { |line| line.join }
      lines.map! { |line| line.split }
      lines.flatten!
    end


    def xml_tokenize

      while has_more_tokens?

#         if @current_token == 'class'
#           @xml += "<class>\n"
#           @nest << "class"
#         elsif @current_token == 'function'
#           @xml += "<subroutineDec>\n"
#           @nest << "subroutineDec"
#           @state = :subroutine
#         elsif @current_token == ")"
#           @xml += "</parameterList>\n"
#         end

#         if @current_token == "{" && @state == :subroutine
#           @xml += "<subroutineBody>\n"
#         end

        type = token_type.downcase
        case type
        when 'keyword'
          type = 'keyword'
          out = key_word
        when 'symbol'
          type = 'symbol'
          out = symbol
        when 'identifier'
          type = 'identifier'
          out = identifier
        when 'int_const'
          type = 'integerConstant'
          out = int_val
        when 'string_const'
          type = 'stringConstant'
          out = string_val
        end


        @xml += "<#{type}> #{out} </#{type}>\n"

#         if @current_token == "("
#           @xml += "<parameterList>\n"
#         elsif @current_token == '}'
#           @xml += "</#{@nest.pop}>\n"
#         end

        advance

      end


    end

end

x = JackTokenizer.new
