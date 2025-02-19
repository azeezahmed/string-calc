require_relative 'helpers/calculator_exceptions'

class StringCalculator
  include CalculatorExceptions
  def add(input_str)
    delimiter = /[,\\n]/
    data = input_str

    # contains delimiter specification & not its not new line
    if(has_dynamic_delimiter(input_str) && !newline_as_dynamic_delimiter(input_str))
      delimiter, data = input_str.split('\n')
      delimiter = delimiter.split('//')[1]
    end

    negative_nums = []
    total = data.split(delimiter).map(&:to_i).reduce(0) do |acc, curr|
      negative_nums.push(curr) if(curr < 0)
      acc + curr 
    end
    raise CalculatorExceptions::NegativeNumberError, negative_nums.join(', ') if negative_nums.any?
    
    total
  end 

  private

  def has_dynamic_delimiter(str)
    str.match?(/^\/\//)
  end

  def newline_as_dynamic_delimiter(str)
    str.split('\n').size > 2
  end
end


# sample executions
# calc = StringCalculator.new
# puts calc.add('5,3,2')
# puts calc.add('5\n3\n2')
# puts calc.add('//R\n5R3R2')
# puts calc.add('//\n\n5\n3\n2')