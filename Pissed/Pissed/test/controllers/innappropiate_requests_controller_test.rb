require 'test_helper'

class InnappropiateRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @innappropiate_request = innappropiate_requests(:one)
  end

  test "should get index" do
    get innappropiate_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_innappropiate_request_url
    assert_response :success
  end

  test "should create innappropiate_request" do
    assert_difference('InnappropiateRequest.count') do
      post innappropiate_requests_url, params: { innappropiate_request: { date: @innappropiate_request.date, justification: @innappropiate_request.justification, post_id: @innappropiate_request.post_id, title: @innappropiate_request.title, user_id: @innappropiate_request.user_id } }
    end

    assert_redirected_to innappropiate_request_url(InnappropiateRequest.last)
  end

  test "should show innappropiate_request" do
    get innappropiate_request_url(@innappropiate_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_innappropiate_request_url(@innappropiate_request)
    assert_response :success
  end

  test "should update innappropiate_request" do
    patch innappropiate_request_url(@innappropiate_request), params: { innappropiate_request: { date: @innappropiate_request.date, justification: @innappropiate_request.justification, post_id: @innappropiate_request.post_id, title: @innappropiate_request.title, user_id: @innappropiate_request.user_id } }
    assert_redirected_to innappropiate_request_url(@innappropiate_request)
  end

  test "should destroy innappropiate_request" do
    assert_difference('InnappropiateRequest.count', -1) do
      delete innappropiate_request_url(@innappropiate_request)
    end

    assert_redirected_to innappropiate_requests_url
  end
end
