require 'test_helper'

class PolicyandservicesControllerTest < ActionDispatch::IntegrationTest
  test "should get documents" do
    get policyandservices_documents_url
    assert_response :success
  end

  test "should get abusivecontent" do
    get policyandservices_abusivecontent_url
    assert_response :success
  end

end
