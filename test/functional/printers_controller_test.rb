require 'test_helper'

class PrintersControllerTest < ActionController::TestCase
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printer" do
    assert_difference('Printer.count') do
      post :create, :printer => @printer.attributes
    end

    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should show printer" do
    get :show, :id => @printer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @printer.to_param
    assert_response :success
  end

  test "should update printer" do
    put :update, :id => @printer.to_param, :printer => @printer.attributes
    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should destroy printer" do
    assert_difference('Printer.count', -1) do
      delete :destroy, :id => @printer.to_param
    end

    assert_redirected_to printers_path
  end
end
