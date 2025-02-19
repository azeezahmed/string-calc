class String_Calculator
  def add(input_str)
    delimiter = /[,\\n]/
    data = input_str

    # contains delimiter specification & not its not new line
    if(has_dynamic_delimiter(input_str) && !newline_as_dynamic_delimiter(input_str))
      delimiter, data = input_str.split('\n')
      delimiter = delimiter.split('//')[1]
    end

    data.split(delimiter).map(&:to_i).sum
  end 

  private

  def has_dynamic_delimiter(str)
    str.match?(/^\/\//)
  end

  def newline_as_dynamic_delimiter(str)
    str.split('\n').size > 2
  end
end