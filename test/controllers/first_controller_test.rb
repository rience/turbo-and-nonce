require "test_helper"

class FirstControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get first_show_url
    assert_response :success
  end
end
