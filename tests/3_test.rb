require 'minitest/autorun'
require_relative '../3.rb'

class TestSort < Minitest::Test
  def test_sort
    assert_equal [1, 2, 3, 4, 5], sort([1, 2, 3, 4, 5])
  end

  def test_sort_with_negative_numbers
    assert_equal [-10, -9, -8, -7, -6, 1, 2, 3, 4, 5], sort([1, 2, 3, 4, 5, -6, -7, -8, -9, -10])
  end

  def test_sort_with_one_number
    assert_equal [5], sort([5])
  end

  def test_sort_with_no_numbers
    assert_equal [], sort([])
  end
end