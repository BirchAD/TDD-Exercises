class Calculator
  def add(*num)
    num.sum
  end

  def multiply(*num)
    num.inject(:*)
  end

  def factorial(num)
    if num.zero?
      1
    else
      (1..num).reduce(:*)
    end
  end
end
