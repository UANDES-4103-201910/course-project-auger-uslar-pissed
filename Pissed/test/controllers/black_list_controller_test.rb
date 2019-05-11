require 'test_helper'

class BlackListControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get black_list_main_url
    assert_response :success
  end

  test "should get recover" do
    get black_list_recover_url
    assert_response :success
  end

  test "should get delete" do
    get black_list_delete_url
    assert_response :success
  end

end
