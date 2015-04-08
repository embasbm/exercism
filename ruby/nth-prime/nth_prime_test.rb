require 'minitest/autorun'
require_relative 'prime'

class TestPrimes < Minitest::Test
  def test_first
    assert_equal 2, Prime.nth(1)
  end

  def test_second
    assert_equal 3, Prime.nth(2)
  end

  def test_third
    assert_equal 5, Prime.nth(3)
  end

  def test_fourth
    assert_equal 7, Prime.nth(4)
  end
  
  def test_fifth
    assert_equal 11, Prime.nth(5)
  end

  def test_sixth_prime
    assert_equal 13, Prime.nth(6)
  end

  def test_big_prime
    assert_equal 104_743, Prime.nth(10_001)
  end

  def test_weird_case
    assert_raises ArgumentError do
      Prime.nth(0)
    end
  end
end
