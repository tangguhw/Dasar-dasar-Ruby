require 'minitest/autorun'
require_relative '../7.rb'

class TestSearch < Minitest::Test
  def test_search
    assert_equal 2, search([1, 2, 3, 4, 5], 3)
  end

  def test_search_with_negative_numbers
    assert_equal 4, search([1, 2, 3, 4, 5, -6, -7, -8, -9, -10], 5)
  end

  def test_search_with_one_number
    assert_equal 0, search([5], 5)
  end

  def test_search_with_no_numbers
    assert_nil search([], 5)
  end
end
