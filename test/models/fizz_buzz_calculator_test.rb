require 'test_helper'

class FizzBuzzCalculatorTest < ActiveSupport::TestCase
  test "it prints Fizz for multiples of three" do
    assert_equal "Fizz", FizzBuzzCalculator.new(3).fizz_text
    assert_equal "Fizz", FizzBuzzCalculator.new(27).fizz_text
  end

  test "it prints Buzz for multiples of five" do
    assert_equal "Buzz", FizzBuzzCalculator.new(5).fizz_text
    assert_equal "Buzz", FizzBuzzCalculator.new(20).fizz_text
  end

  test "it prints FizzBuzz for multiples of three and five" do
    assert_equal "FizzBuzz", FizzBuzzCalculator.new(15).fizz_text
    assert_equal "FizzBuzz", FizzBuzzCalculator.new(30).fizz_text
  end

  test "it prints nothing if not a multiple of three or five" do
    assert_empty FizzBuzzCalculator.new(22).fizz_text
  end
end
