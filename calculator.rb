class Calculator
  attr_accessor :accumulator

  def add(number)
    self.accumulator += number
  end

  def minus(number)
    self.accumulator -= number
  end

  def multiply(number)
    self.accumulator *= number
  end

  def divide(number)
    self.accumulator /= number.to_f
  end
end
