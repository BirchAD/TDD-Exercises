require './lib/calculator'

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5,2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2,5,7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the multiplication of two numbers" do
    calculator = Calculator.new
    expect(calculator.multiply(5,5)).to eql(25)
    end

    it "returns the multiplication of multiple numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5,5,5)).to eql(125)
    end
  end

  describe "#factorial" do
    it "returns 1 when given 0 (0! = !)" do
      calculator = Calculator.new
      expect(calculator.factorial(0)).to eql(1)
    end

    it "returns 120 when given 5 (5! = 120)" do
      calculator = Calculator.new
      expect(calculator.factorial(5)).to eql(120)
    end
  end
end
