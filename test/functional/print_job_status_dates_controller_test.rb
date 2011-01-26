require 'test_helper'

class PrintJobStatusDatesControllerTest < ActionController::TestCase
  setup do
    @print_job_status_date = print_job_status_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_job_status_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_job_status_date" do
    assert_difference('PrintJobStatusDate.count') do
      post :create, :print_job_status_date => @print_job_status_date.attributes
    end

    assert_redirected_to print_job_status_date_path(assigns(:print_job_status_date))
  end

  test "should show print_job_status_date" do
    get :show, :id => @print_job_status_date.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @print_job_status_date.to_param
    assert_response :success
  end

  test "should update print_job_status_date" do
    put :update, :id => @print_job_status_date.to_param, :print_job_status_date => @print_job_status_date.attributes
    assert_redirected_to print_job_status_date_path(assigns(:print_job_status_date))
  end

  test "should destroy print_job_status_date" do
    assert_difference('PrintJobStatusDate.count', -1) do
      delete :destroy, :id => @print_job_status_date.to_param
    end

    assert_redirected_to print_job_status_dates_path
  end
end
