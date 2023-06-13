require "test_helper"

class SecondControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get second_show_url
    assert_response :success
  end
end
