require 'test_helper'

class EnrolledUserCommentsControllerTest < ActionController::TestCase
  setup do
    @enrolled_user_comment = enrolled_user_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolled_user_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolled_user_comment" do
    assert_difference('EnrolledUserComment.count') do
      post :create, enrolled_user_comment: { comment_image: @enrolled_user_comment.comment_image, comment_text: @enrolled_user_comment.comment_text }
    end

    assert_redirected_to enrolled_user_comment_path(assigns(:enrolled_user_comment))
  end

  test "should show enrolled_user_comment" do
    get :show, id: @enrolled_user_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolled_user_comment
    assert_response :success
  end

  test "should update enrolled_user_comment" do
    put :update, id: @enrolled_user_comment, enrolled_user_comment: { comment_image: @enrolled_user_comment.comment_image, comment_text: @enrolled_user_comment.comment_text }
    assert_redirected_to enrolled_user_comment_path(assigns(:enrolled_user_comment))
  end

  test "should destroy enrolled_user_comment" do
    assert_difference('EnrolledUserComment.count', -1) do
      delete :destroy, id: @enrolled_user_comment
    end

    assert_redirected_to enrolled_user_comments_path
  end
end
