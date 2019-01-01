require 'test_helper'

class ArticlesTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articles_tag = articles_tags(:one)
  end

  test "should get index" do
    get articles_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_articles_tag_url
    assert_response :success
  end

  test "should create articles_tag" do
    assert_difference('ArticlesTag.count') do
      post articles_tags_url, params: { articles_tag: { article_id: @articles_tag.article_id, tag_id: @articles_tag.tag_id } }
    end

    assert_redirected_to articles_tag_url(ArticlesTag.last)
  end

  test "should show articles_tag" do
    get articles_tag_url(@articles_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_articles_tag_url(@articles_tag)
    assert_response :success
  end

  test "should update articles_tag" do
    patch articles_tag_url(@articles_tag), params: { articles_tag: { article_id: @articles_tag.article_id, tag_id: @articles_tag.tag_id } }
    assert_redirected_to articles_tag_url(@articles_tag)
  end

  test "should destroy articles_tag" do
    assert_difference('ArticlesTag.count', -1) do
      delete articles_tag_url(@articles_tag)
    end

    assert_redirected_to articles_tags_url
  end
end
