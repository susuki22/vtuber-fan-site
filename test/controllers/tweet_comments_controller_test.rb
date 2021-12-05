require 'test_helper'

class TweetCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tweet_comments_show_url
    assert_response :success
  end

  test "should get create" do
    get tweet_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tweet_comments_destroy_url
    assert_response :success
  end

end
