class String_Calculator
  def add(input_str)
    input_str.split(',').map(&:to_i).sum
  end 
end