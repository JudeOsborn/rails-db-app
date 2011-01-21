require 'test_helper'

class OrderPaymentsControllerTest < ActionController::TestCase
  setup do
    @order_payment = order_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_payment" do
    assert_difference('OrderPayment.count') do
      post :create, :order_payment => @order_payment.attributes
    end

    assert_redirected_to order_payment_path(assigns(:order_payment))
  end

  test "should show order_payment" do
    get :show, :id => @order_payment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @order_payment.to_param
    assert_response :success
  end

  test "should update order_payment" do
    put :update, :id => @order_payment.to_param, :order_payment => @order_payment.attributes
    assert_redirected_to order_payment_path(assigns(:order_payment))
  end

  test "should destroy order_payment" do
    assert_difference('OrderPayment.count', -1) do
      delete :destroy, :id => @order_payment.to_param
    end

    assert_redirected_to order_payments_path
  end
end
