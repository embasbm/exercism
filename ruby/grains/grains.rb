# Grains class:
# - how many grains were on each square, and
# - the total number of grains
class Grains
  BOARD_SIZE = (1..64)

  def square(n)
    BOARD_SIZE.include?(n) ? (2**n) / 2 : 0
  end

  def total
    BOARD_SIZE.inject { |a, e| a + square(e) }
  end
end
