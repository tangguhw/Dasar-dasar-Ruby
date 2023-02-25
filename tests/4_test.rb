require 'minitest/autorun'
require_relative '../4.rb'

class TestIsPalindrome < Minitest::Test
  def test_is_palindrome
    assert_equal true, is_palindrome?("racecar")
  end

  def test_is_palindrome_with_spaces
    assert_equal true, is_palindrome?("racecar racecar")
  end

  def test_is_palindrome_with_capital_letters
    assert_equal true, is_palindrome?("Racecar")
  end

  def test_irfan_is_not_palindrome
    assert_equal false, is_palindrome?("irfan")
  end
end
