require 'test_helper'

class DumpsterControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get dumpster_main_url
    assert_response :success
  end

  test "should get recover" do
    get dumpster_recover_url
    assert_response :success
  end

  test "should get delete" do
    get dumpster_delete_url
    assert_response :success
  end

end
