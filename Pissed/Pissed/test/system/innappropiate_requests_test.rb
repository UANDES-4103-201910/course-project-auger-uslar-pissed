require "application_system_test_case"

class InnappropiateRequestsTest < ApplicationSystemTestCase
  setup do
    @innappropiate_request = innappropiate_requests(:one)
  end

  test "visiting the index" do
    visit innappropiate_requests_url
    assert_selector "h1", text: "Innappropiate Requests"
  end

  test "creating a Innappropiate request" do
    visit innappropiate_requests_url
    click_on "New Innappropiate Request"

    fill_in "Date", with: @innappropiate_request.date
    fill_in "Justification", with: @innappropiate_request.justification
    fill_in "Post", with: @innappropiate_request.post_id
    fill_in "Title", with: @innappropiate_request.title
    fill_in "User", with: @innappropiate_request.user_id
    click_on "Create Innappropiate request"

    assert_text "Innappropiate request was successfully created"
    click_on "Back"
  end

  test "updating a Innappropiate request" do
    visit innappropiate_requests_url
    click_on "Edit", match: :first

    fill_in "Date", with: @innappropiate_request.date
    fill_in "Justification", with: @innappropiate_request.justification
    fill_in "Post", with: @innappropiate_request.post_id
    fill_in "Title", with: @innappropiate_request.title
    fill_in "User", with: @innappropiate_request.user_id
    click_on "Update Innappropiate request"

    assert_text "Innappropiate request was successfully updated"
    click_on "Back"
  end

  test "destroying a Innappropiate request" do
    visit innappropiate_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Innappropiate request was successfully destroyed"
  end
end
