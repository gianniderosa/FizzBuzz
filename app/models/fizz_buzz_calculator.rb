class FizzBuzzCalculator
  include ActiveModel::Validations
  validates :number, numericality: { only_integer: true, greater_than: 0 }
  attr_accessor :number

  def initialize number
    @number = number.to_i
  end

  def fizz_text
    if is_divisible_by(15)
      'FizzBuzz'
    elsif is_divisible_by(5)
      'Buzz'
    elsif is_divisible_by(3)
      'Fizz'
    else
      ''
    end
  end

  private

  def is_divisible_by(divisor)
    @number % divisor == 0
  end
end
