require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get search_author_url
    assert_response :success
  end

  test "should get post" do
    get search_post_url
    assert_response :success
  end

end
