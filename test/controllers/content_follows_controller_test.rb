require 'test_helper'

class ContentFollowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_follow = content_follows(:one)
  end

  test "should get index" do
    get content_follows_url
    assert_response :success
  end

  test "should get new" do
    get new_content_follow_url
    assert_response :success
  end

  test "should create content_follow" do
    assert_difference('ContentFollow.count') do
      post content_follows_url, params: { content_follow: { article_id: @content_follow.article_id, user_id: @content_follow.user_id } }
    end

    assert_redirected_to content_follow_url(ContentFollow.last)
  end

  test "should show content_follow" do
    get content_follow_url(@content_follow)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_follow_url(@content_follow)
    assert_response :success
  end

  test "should update content_follow" do
    patch content_follow_url(@content_follow), params: { content_follow: { article_id: @content_follow.article_id, user_id: @content_follow.user_id } }
    assert_redirected_to content_follow_url(@content_follow)
  end

  test "should destroy content_follow" do
    assert_difference('ContentFollow.count', -1) do
      delete content_follow_url(@content_follow)
    end

    assert_redirected_to content_follows_url
  end
end
