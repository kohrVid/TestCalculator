class Calculator
  attr_accessor :accumulator

  def self.accumulator=(val)
    self.accumulator = val.to_f
  end

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
    if number == 0
      self.accumulator = nil
    else
      self.accumulator /= number.to_f
    end
  end
end
