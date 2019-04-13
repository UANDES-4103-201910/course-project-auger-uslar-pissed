require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { city: @post.city, country: @post.country, date: @post.date, description: @post.description, file_atachment: @post.file_atachment, gps_location: @post.gps_location, image: @post.image, in_dumpster: @post.in_dumpster, innapropiated_count: @post.innapropiated_count, is_hidden: @post.is_hidden, open: @post.open, site: @post.site, solved: @post.solved } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { city: @post.city, country: @post.country, date: @post.date, description: @post.description, file_atachment: @post.file_atachment, gps_location: @post.gps_location, image: @post.image, in_dumpster: @post.in_dumpster, innapropiated_count: @post.innapropiated_count, is_hidden: @post.is_hidden, open: @post.open, site: @post.site, solved: @post.solved } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
