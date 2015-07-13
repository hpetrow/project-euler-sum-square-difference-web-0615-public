# Implement your object-oriented solution here!

class SumSquareDifference
  attr_reader :difference

  def initialize(n)
    @difference = sum_square_difference(n)
  end

def sum_square_difference(n)
  (sum_squares(n) - square_sum(n)).abs
end

def sum_squares(n)
  (1..n).inject(0) { |s, n|
    s + n*n
  }
end

def square_sum(n)
  sum = (1..n).inject(0) { |s, n|
    s + n
  }
  sum * sum
end
end