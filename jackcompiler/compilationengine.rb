class CompilationEngine

  attr_reader :input, :output, :nest_stack

  @@ops = '+ - * / & | < > ='.split

  def initialize(input)
    #creates a new compilation engine with the given input and output. The next routine to be called must be compile_class()
    @input = input
    @output = ''
    @input.advance
    compile_class
  end

  def compile
    case @input.current_token
    when 'static', 'field'
      class_var_dec
    when 'int', 'char', 'boolean'
      @output += @input.xml_ize
      @input.advance
      @output += @input.xml_ize
      @input.advance
    when 'constructor', 'function', 'method'
      compile_subroutine
    when "("
      compile_parameter_list
    when 'var'
      compile_var_dec
    else
      @output += @input.xml_ize
      @input.advance
    end

  end

  def compile_class
    # compiles a complete class
    @output += "<class>\n"
    compile until !input.has_more_tokens?
    compile
    @output += "</class>\n"
  end

  def compile_class_var_dec
    # compiles a static declaration
    @output += "<classVarDec>\n"
    compile until current_token == ';'
    compile
    @output += "</classVarDec>\n"
  end

  def compile_subroutine
    # compiles a complete method, function, or constructor
    #
    @output += "<subroutineDec>\n"
    @output += @input.xml_ize
    @input.advance
    compile until input.current_token == '{'
    @output += "<subroutineBody>\n"
    @output += @input.xml_ize
    @input.advance

    compile_state_vars
    @output += "<statements>\n"
    compile_statements until input.current_token == '}'
    @output += "</statements>\n"

    compile until input.current_token == '}'
    compile
    @output += "</subroutineBody>\n"
    @output += "</subroutineDec>\n"

  end

  def compile_parameter_list
    # compiles a (possibly empty) parameter list, not including the enclosing ()
    @output += @input.xml_ize
    @input.advance

    @output += "<parameterList>\n"
    compile until input.current_token == ')'
    @output += "</parameterList>\n"
    @output += @input.xml_ize
    @input.advance

  end


  def compile_var_dec
    # compiles a var declaration
    @output += "<varDec>\n"
      @output += @input.xml_ize
      @input.advance
    compile until input.current_token == ';'
    compile
    @output += "</varDec>\n"
  end


  def compile_state_vars
    if input.current_token == 'var'
      compile
      compile_state_vars
    end
  end

  def compile_statements
    # compiles a sequence of statements, not including the enclosing {}
    case input.current_token
    when 'let'
      compile_let
    when 'if'
      compile_if
    when 'while'
      compile_while
    when 'do'
      compile_do
    when 'return'
      compile_return
    else
      compile
    end
  end


  def compile_do
    # compiles a do statement, and motivates highly redundant comments
    @output += "<doStatement>\n"
    compile until @input.current_token == '('
    compile_expression_list
    compile until @input.current_token == ';'
    compile
    @output += "</doStatement>\n"
  end


  def compile_let
    # compiles a let statement
    @output += "<letStatement>\n"
    compile #'let'
    compile # varName

    if @input.current_token == '['
      compile
      compile_expression
      compile
    end

    compile
    compile_expression until @input.current_token == ';'
    compile
    @output += "</letStatement>\n"
  end


  def compile_while
    # compiles a while statement
    @output += "<whileStatement>\n"
    compile
      @output += @input.xml_ize
      @input.advance
    compile_expression
    compile
    compile
    @output += "<statements>\n"
    compile_statements until @input.current_token == '}'
    @output += "</statements>\n"
    compile
    @output += "</whileStatement>\n"
  end


  def compile_return
    # compiles a return statement
    @output += "<returnStatement>\n"
    compile
    compile_expression if @input.current_token != ';'
    compile
    @output += "</returnStatement>\n"
  end


  def compile_if
    # compiles an if statement, possibly with a trailing else clause
    @output += "<ifStatement>\n"
    compile
  end



  def compile_expression
    # compiles_expression
    compile if @input.current_token == ","
    @output += "<expression>\n"
    compile_term
    if @@ops.include?(@input.current_token)
      compile
      compile_term
    end
    @output += "</expression>\n"
  end


  def compile_term
    # compiles a term.  This routine is faced with a slight difficulty when trying to decide between some of the alternative parsing rules.  Specifically, if the current token is an identifier, the routine must distinguish between a variable, an array entry, and a subroutine call.  A single look-ahead token, which may be one of [, (, or . suffices to distinguish between the three possibilities.  Any other token is not part of this term and should not be advanced over.
    @output += "<term>\n"

    if @input.tokens[0] == '.'
      compile
      compile
      compile
      compile_expression_list
    elsif @input.tokens[0] == '['
      compile
      compile
      compile_expression
      compile
    elsif @input.current_token == '('
      compile
      compile_expression_list
      compile
    else
      compile
    end

    @output += "</term>\n"
  end


  def compile_expression_list
    # compiles a (possibly empty) comma-separated list of expressions
    @output += @input.xml_ize
    @input.advance

    @output += "<expressionList>\n"
    compile_expression until input.current_token == ')'
    @output += "</expressionList>\n"
    @output += @input.xml_ize
    @input.advance

  end


end
