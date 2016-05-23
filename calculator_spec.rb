require "minitest/autorun"
require "./calculator"

class CalculatorSpec < MiniTest::Spec
  before do
    @calculator = Calculator.new
    @calculator.accumulator = 5
  end

  describe "Addition" do
    it "should add numbers to the accumulator" do
      @calculator.add(10).must_equal 15
    end 
  end

  describe "Minus" do
    it "should subtract numbers from the accumulator" do
      @calculator.minus(7).must_equal -2
    end
  end

  describe "Multiply" do
    it "should multiply the accumulator by a number" do
      @calculator.multiply(7).must_equal(35)
    end
  end

  describe "Division" do
    it "should divide the accumulator by a number" do
      @calculator.divide(7).must_equal(0.7142857142857143)
    end

    it "should return a float when dividing the accumulator by larger numbers" do
      @calculator.divide(7).must_be_instance_of(Float)
    end

    it "should return nil when dividing by zero" do
      @calculator.divide(0).must_be_nil
      @calculator.accumulator.must_be_nil
    end
  end
end
