class String_Calculator
  def add(input_str)
    input_str.split(/[,\\n]/).map(&:to_i).sum
  end 
end