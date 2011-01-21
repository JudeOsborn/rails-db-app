require 'test_helper'

class ItemsOrderedsControllerTest < ActionController::TestCase
  setup do
    @items_ordered = items_ordereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items_ordereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create items_ordered" do
    assert_difference('ItemsOrdered.count') do
      post :create, :items_ordered => @items_ordered.attributes
    end

    assert_redirected_to items_ordered_path(assigns(:items_ordered))
  end

  test "should show items_ordered" do
    get :show, :id => @items_ordered.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @items_ordered.to_param
    assert_response :success
  end

  test "should update items_ordered" do
    put :update, :id => @items_ordered.to_param, :items_ordered => @items_ordered.attributes
    assert_redirected_to items_ordered_path(assigns(:items_ordered))
  end

  test "should destroy items_ordered" do
    assert_difference('ItemsOrdered.count', -1) do
      delete :destroy, :id => @items_ordered.to_param
    end

    assert_redirected_to items_ordereds_path
  end
end
