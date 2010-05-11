require 'test/unit'

class Calculator
  attr_reader :result
  
  # def add(a, b)
  #   @result = a + b
  # end
  def add(*args)
    @result = args.inject(0) { |s, v| s + v }
  end
end

class CalculatorTest < Test::Unit::TestCase
  def test_addition
    calculator = Calculator.new
    calculator.add(2, 2)
    assert_equal(4, calculator.result)
  end
  
  def test_addition_with_multiple_arguments
    calculator = Calculator.new
    calculator.add(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    assert_equal(55, calculator.result)
  end
end


