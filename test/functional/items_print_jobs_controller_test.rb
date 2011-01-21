require 'test_helper'

class ItemsPrintJobsControllerTest < ActionController::TestCase
  setup do
    @items_print_job = items_print_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items_print_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create items_print_job" do
    assert_difference('ItemsPrintJob.count') do
      post :create, :items_print_job => @items_print_job.attributes
    end

    assert_redirected_to items_print_job_path(assigns(:items_print_job))
  end

  test "should show items_print_job" do
    get :show, :id => @items_print_job.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @items_print_job.to_param
    assert_response :success
  end

  test "should update items_print_job" do
    put :update, :id => @items_print_job.to_param, :items_print_job => @items_print_job.attributes
    assert_redirected_to items_print_job_path(assigns(:items_print_job))
  end

  test "should destroy items_print_job" do
    assert_difference('ItemsPrintJob.count', -1) do
      delete :destroy, :id => @items_print_job.to_param
    end

    assert_redirected_to items_print_jobs_path
  end
end
