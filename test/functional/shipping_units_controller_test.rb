require 'test_helper'

class ShippingUnitsControllerTest < ActionController::TestCase
  setup do
    @shipping_unit = shipping_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_unit" do
    assert_difference('ShippingUnit.count') do
      post :create, :shipping_unit => @shipping_unit.attributes
    end

    assert_redirected_to shipping_unit_path(assigns(:shipping_unit))
  end

  test "should show shipping_unit" do
    get :show, :id => @shipping_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shipping_unit.to_param
    assert_response :success
  end

  test "should update shipping_unit" do
    put :update, :id => @shipping_unit.to_param, :shipping_unit => @shipping_unit.attributes
    assert_redirected_to shipping_unit_path(assigns(:shipping_unit))
  end

  test "should destroy shipping_unit" do
    assert_difference('ShippingUnit.count', -1) do
      delete :destroy, :id => @shipping_unit.to_param
    end

    assert_redirected_to shipping_units_path
  end
end
