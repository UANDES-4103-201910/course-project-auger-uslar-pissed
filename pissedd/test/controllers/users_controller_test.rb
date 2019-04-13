require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { bio: @user.bio, city: @user.city, country: @user.country, email_address: @user.email_address, gps_location: @user.gps_location, in_blacklist: @user.in_blacklist, password: @user.password, picture: @user.picture, previously_suspension: @user.previously_suspension, recent_activity: @user.recent_activity, string: @user.string, suspended: @user.suspended, user_type: @user.user_type, zone_id: @user.zone_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { bio: @user.bio, city: @user.city, country: @user.country, email_address: @user.email_address, gps_location: @user.gps_location, in_blacklist: @user.in_blacklist, password: @user.password, picture: @user.picture, previously_suspension: @user.previously_suspension, recent_activity: @user.recent_activity, string: @user.string, suspended: @user.suspended, user_type: @user.user_type, zone_id: @user.zone_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
