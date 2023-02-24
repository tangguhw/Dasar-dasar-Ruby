require 'minitest/autorun'
require_relative '../5.rb'

class TestFactorial < Minitest::Test
  def test_factorial
    assert_equal 120, factorial(5)
  end

  def test_factorial_with_zero
    assert_equal 1, factorial(0)
  end

  def test_factorial_with_one
    assert_equal 1, factorial(1)
  end
end
