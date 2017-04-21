class FizzBuzzServiceController < ApplicationController
  def new
    fb = FizzBuzzCalculator.new(params[:number])
    if fb.valid?
      render json: {num: fb.number, text: fb.fizz_text}
    else
      render status: :unprocessable_entity
    end
  end
end
