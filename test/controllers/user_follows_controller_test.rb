require 'test_helper'

class UserFollowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_follow = user_follows(:one)
  end

  test "should get index" do
    get user_follows_url
    assert_response :success
  end

  test "should get new" do
    get new_user_follow_url
    assert_response :success
  end

  test "should create user_follow" do
    assert_difference('UserFollow.count') do
      post user_follows_url, params: { user_follow: { user_id_follow_id: @user_follow.user_id_follow_id, user_id_id: @user_follow.user_id_id } }
    end

    assert_redirected_to user_follow_url(UserFollow.last)
  end

  test "should show user_follow" do
    get user_follow_url(@user_follow)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_follow_url(@user_follow)
    assert_response :success
  end

  test "should update user_follow" do
    patch user_follow_url(@user_follow), params: { user_follow: { user_id_follow_id: @user_follow.user_id_follow_id, user_id_id: @user_follow.user_id_id } }
    assert_redirected_to user_follow_url(@user_follow)
  end

  test "should destroy user_follow" do
    assert_difference('UserFollow.count', -1) do
      delete user_follow_url(@user_follow)
    end

    assert_redirected_to user_follows_url
  end
end
