require "minitest/autorun"
require "./calculator"

class CalculatorSpec < MiniTest::Test
  def test_accumulator
    my_calculator = Calculator.new()
    my_calculator.accumulator = 5
    assert_equal(5, my_calculator.accumulator)
  end

  def test_add
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(12, my_calculator.add(7))
  end
  
  def test_minus
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(-2, my_calculator.minus(7))
  end

  def test_multiply
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(35, my_calculator.multiply(7))
  end
  
  def test_division
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_equal(0.7142857142857143, my_calculator.divide(7))
  end
  
  def test_accumulator_is_a_floating_point
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_instance_of(Float, my_calculator.divide(7))
  end

  def test_divide_by_zero
    my_calculator = Calculator.new
    my_calculator.accumulator = 5
    assert_nil(my_calculator.divide(0))
    assert_nil(my_calculator.accumulator)
  end

end
