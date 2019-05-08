require 'test_helper'

class UserProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get user_profile_main_url
    assert_response :success
  end

end
