class String_Calculator
  def add(input_str)
    # if contains delimiter specification
    delimiter = /[,\\n]/
    data = input_str
    if(input_str.match?(/^\/\//))
      delimiter, data = input_str.split('\n')
      delimiter = delimiter.split('//')[1]
    end
    data.split(delimiter).map(&:to_i).sum
  end 
end