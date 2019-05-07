require 'test_helper'

class MainpageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get mainpage_home_url
    assert_response :success
  end

end
