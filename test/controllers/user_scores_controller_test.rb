require 'test_helper'

class UserScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_score = user_scores(:one)
  end

  test "should get index" do
    get user_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_user_score_url
    assert_response :success
  end

  test "should create user_score" do
    assert_difference('UserScore.count') do
      post user_scores_url, params: { user_score: {  } }
    end

    assert_redirected_to user_score_url(UserScore.last)
  end

  test "should show user_score" do
    get user_score_url(@user_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_score_url(@user_score)
    assert_response :success
  end

  test "should update user_score" do
    patch user_score_url(@user_score), params: { user_score: {  } }
    assert_redirected_to user_score_url(@user_score)
  end

  test "should destroy user_score" do
    assert_difference('UserScore.count', -1) do
      delete user_score_url(@user_score)
    end

    assert_redirected_to user_scores_url
  end
end
