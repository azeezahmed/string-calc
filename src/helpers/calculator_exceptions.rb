module CalculatorExceptions
  class NegativeNumberError < StandardError
    def initialize(number)
      super("negative numbers are not allowed: #{number}")
    end
  end
end
