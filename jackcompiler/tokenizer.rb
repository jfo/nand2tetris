class JackTokenizer

  attr_accessor :current_token
  def initialize(filename)
    # opens the input file and gets ready to tokenize it
    @commands = []
    @current_token = ""
  end

  def has_more_tokens?
    # do we have more tokens in the input?
    return false
  end

  def advance
    # gets the next token from the input and makes it the current token
    # only if has more tokens is true
  end

  def token_type
    # returns the type of the current token
  end


  private

    def key_word
      # returns the keyword which is the current token should be called only when token type is keyword
    end

    def symbol
      # returns the character which is the current token, should be called only when the current token is symbol
    end

    def identifier
      # returns the identifier which is the current token should be called only when token type is identifier
    end

    def int_val
      # returns the integer value of the current token. should be called only if the token type is int_const.
    end

    def string_val
      # returns the string value of the current token, without the double quotes. should be called only when token type is string_const.
    end

end
