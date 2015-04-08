class Squares
  attr_reader :n
  
  def initialize(num)
    @n = num
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def square_of_sums
    sum**2
  end

  def sum_of_squares
    (n * ( n + 1 ) * ( 2 * n + 1)) / 6
  end

  private 
  def sum
    (n * ( n + 1)) / 2
  end
end