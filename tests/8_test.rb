require 'minitest/autorun'
require_relative '../8.rb'

class TestCountOccurrences < Minitest::Test
  def test_count_occurrences
    assert_equal 2, count_occurrences([1, 2, 3, 4, 5, 1], 1)
  end

  def test_count_occurrences_with_no_occurrences
    assert_equal 0, count_occurrences([1, 2, 3, 4, 5], 6)
  end

  def test_count_occurrences_with_one_number
    assert_equal 1, count_occurrences([5], 5)
  end

  def test_count_occurrences_with_no_numbers
    assert_equal 0, count_occurrences([], 5)
  end
end
