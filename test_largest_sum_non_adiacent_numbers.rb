require_relative "largest_sum_non_adiacent_numbers"
require "test/unit"

class TestLargestSumNonAdiacentNumbers < Test::Unit::TestCase

  def test_empty
    assert_equal(nil, LargestSumNonAdiacentNumbers.new().find())
  end

  def test_find_one_element
    assert_equal(0, LargestSumNonAdiacentNumbers.new(0).find())
    assert_equal(2, LargestSumNonAdiacentNumbers.new(1,2).find())
    assert_equal(2, LargestSumNonAdiacentNumbers.new(2).find())
  end

  def test_find_more_element
    assert_equal(10, LargestSumNonAdiacentNumbers.new(5,1,1,5).find())
    assert_equal(304, LargestSumNonAdiacentNumbers.new(1,2,10,2,10,300).find())
  end

  def test_find_more_elements_with_negative
    assert_equal(-1, LargestSumNonAdiacentNumbers.new(-6,-5,-4,-3,-2,-1).find())
  end
end
