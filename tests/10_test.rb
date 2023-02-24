require 'minitest/autorun'
require_relative '../10.rb'

class TestFindFirstRepeated < Minitest::Test
  def test_find_first_repeated
    assert_equal 1, find_first_repeated([1, 2, 3, 4, 5, 1])
  end

  def test_find_first_repeated_with_negative_numbers
    assert_equal -1, find_first_repeated([1, 2, 3, 4, 5, -1, -2, -3, -4, -5, -1])
  end

  def test_find_first_repeated_with_occurrence_in_end
    assert_equal 1, find_first_repeated([1, 2, 3, 4, 5, 5, 1])
  end

  def test_find_first_repeated_with_no_repeated
    assert_nil find_first_repeated([1, 2, 3, 4, 5])
  end

  def test_find_first_repeated_with_one_number
    assert_nil find_first_repeated([5])
  end

  def test_find_first_repeated_with_no_numbers
    assert_nil find_first_repeated([])
  end
end
