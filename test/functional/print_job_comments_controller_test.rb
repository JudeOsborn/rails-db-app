require 'test_helper'

class PrintJobCommentsControllerTest < ActionController::TestCase
  setup do
    @print_job_comment = print_job_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_job_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_job_comment" do
    assert_difference('PrintJobComment.count') do
      post :create, :print_job_comment => @print_job_comment.attributes
    end

    assert_redirected_to print_job_comment_path(assigns(:print_job_comment))
  end

  test "should show print_job_comment" do
    get :show, :id => @print_job_comment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @print_job_comment.to_param
    assert_response :success
  end

  test "should update print_job_comment" do
    put :update, :id => @print_job_comment.to_param, :print_job_comment => @print_job_comment.attributes
    assert_redirected_to print_job_comment_path(assigns(:print_job_comment))
  end

  test "should destroy print_job_comment" do
    assert_difference('PrintJobComment.count', -1) do
      delete :destroy, :id => @print_job_comment.to_param
    end

    assert_redirected_to print_job_comments_path
  end
end
