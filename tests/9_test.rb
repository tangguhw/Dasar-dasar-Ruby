require 'minitest/autorun'
require_relative '../9.rb'

class TestGCD < Minitest::Test
  def test_gcd_with_zero
    assert_equal 1, gcd(1, 0)
  end

  def test_gcd_with_one
    assert_equal 1, gcd(1, 1)
  end

  def test_gcd_with_two
    assert_equal 2, gcd(2, 4)
  end

  def test_gcd_with_three
    assert_equal 3, gcd(3, 6)
  end

  def test_gcd_with_four
    assert_equal 4, gcd(4, 8)
  end

  def test_gcd_with_five
    assert_equal 5, gcd(5, 10)
  end
end
