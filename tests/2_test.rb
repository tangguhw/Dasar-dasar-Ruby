require 'minitest/autorun'
require_relative '../2.rb'

class TestFindMax < Minitest::Test
  def test_find_max
    assert_equal 5, find_max([1, 2, 3, 4, 5])
  end

  def test_find_max_with_negative_numbers
    assert_equal 5, find_max([1, 2, 3, 4, 5, -6, -7, -8, -9, -10])
  end

  def test_find_max_with_one_number
    assert_equal 5, find_max([5])
  end

  def test_find_max_with_no_numbers
    assert_nil find_max([])
  end
end