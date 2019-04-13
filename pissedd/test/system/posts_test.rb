require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "City", with: @post.city
    fill_in "Country", with: @post.country
    fill_in "Date", with: @post.date
    fill_in "Description", with: @post.description
    fill_in "File atachment", with: @post.file_atachment
    fill_in "Gps location", with: @post.gps_location
    fill_in "Image", with: @post.image
    check "In dumpster" if @post.in_dumpster
    fill_in "Innapropiated count", with: @post.innapropiated_count
    check "Is hidden" if @post.is_hidden
    fill_in "Open", with: @post.open
    fill_in "Site", with: @post.site
    check "Solved" if @post.solved
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "City", with: @post.city
    fill_in "Country", with: @post.country
    fill_in "Date", with: @post.date
    fill_in "Description", with: @post.description
    fill_in "File atachment", with: @post.file_atachment
    fill_in "Gps location", with: @post.gps_location
    fill_in "Image", with: @post.image
    check "In dumpster" if @post.in_dumpster
    fill_in "Innapropiated count", with: @post.innapropiated_count
    check "Is hidden" if @post.is_hidden
    fill_in "Open", with: @post.open
    fill_in "Site", with: @post.site
    check "Solved" if @post.solved
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
