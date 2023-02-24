require 'minitest/autorun'
require_relative '../6.rb'

class TestFibonacci < Minitest::Test
  def test_fibonacci
    assert_equal 5, fibonacci(5)
  end

  def test_fibonacci_with_zero
    assert_equal 0, fibonacci(0)
  end

  def test_fibonacci_with_one
    assert_equal 1, fibonacci(1)
  end
end
