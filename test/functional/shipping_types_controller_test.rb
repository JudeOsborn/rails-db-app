require 'test_helper'

class ShippingTypesControllerTest < ActionController::TestCase
  setup do
    @shipping_type = shipping_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_type" do
    assert_difference('ShippingType.count') do
      post :create, :shipping_type => @shipping_type.attributes
    end

    assert_redirected_to shipping_type_path(assigns(:shipping_type))
  end

  test "should show shipping_type" do
    get :show, :id => @shipping_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shipping_type.to_param
    assert_response :success
  end

  test "should update shipping_type" do
    put :update, :id => @shipping_type.to_param, :shipping_type => @shipping_type.attributes
    assert_redirected_to shipping_type_path(assigns(:shipping_type))
  end

  test "should destroy shipping_type" do
    assert_difference('ShippingType.count', -1) do
      delete :destroy, :id => @shipping_type.to_param
    end

    assert_redirected_to shipping_types_path
  end
end
