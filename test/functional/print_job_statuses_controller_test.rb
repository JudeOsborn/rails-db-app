require 'test_helper'

class PrintJobStatusesControllerTest < ActionController::TestCase
  setup do
    @print_job_status = print_job_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_job_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_job_status" do
    assert_difference('PrintJobStatus.count') do
      post :create, :print_job_status => @print_job_status.attributes
    end

    assert_redirected_to print_job_status_path(assigns(:print_job_status))
  end

  test "should show print_job_status" do
    get :show, :id => @print_job_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @print_job_status.to_param
    assert_response :success
  end

  test "should update print_job_status" do
    put :update, :id => @print_job_status.to_param, :print_job_status => @print_job_status.attributes
    assert_redirected_to print_job_status_path(assigns(:print_job_status))
  end

  test "should destroy print_job_status" do
    assert_difference('PrintJobStatus.count', -1) do
      delete :destroy, :id => @print_job_status.to_param
    end

    assert_redirected_to print_job_statuses_path
  end
end
