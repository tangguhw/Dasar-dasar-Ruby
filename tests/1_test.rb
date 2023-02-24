require 'minitest/autorun'
require_relative '../1.rb'

class TestIsPrime < Minitest::Test
  def test_one_is_not_prime
    assert_equal false, is_prime?(1)
  end

  def minus_one_is_not_prime
    assert_equal false, is_prime?(-2)
  end

  def test_two_is_prime
    assert_equal true, is_prime?(2)
  end

  def test_three_is_prime
    assert_equal true, is_prime?(3)
  end

  def test_four_is_not_prime
    assert_equal false, is_prime?(4)
  end

  def test_twenty_is_not_prime
    assert_equal false, is_prime?(20)
  end

  def test_seventeen_is_prime
    assert_equal true, is_prime?(17)
  end
end


