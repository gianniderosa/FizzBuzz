require 'test_helper'

class FizzBuzzServiceControllerTest < ActionDispatch::IntegrationTest
  test "should return 200 with integer request" do
    get fizz_buzz_service_new_url(number: 5)
    assert_response :success
  end

  test "should return 422 with non-integer request" do
    get fizz_buzz_service_new_url(number: 'a')
    assert_response :unprocessable_entity
  end
end
