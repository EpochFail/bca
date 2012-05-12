require 'test_helper'

class BusinessSizesControllerTest < ActionController::TestCase
  setup do
    @business_size = business_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_size" do
    assert_difference('BusinessSize.count') do
      post :create, business_size: { name: @business_size.name, size: @business_size.size }
    end

    assert_redirected_to business_size_path(assigns(:business_size))
  end

  test "should show business_size" do
    get :show, id: @business_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_size
    assert_response :success
  end

  test "should update business_size" do
    put :update, id: @business_size, business_size: { name: @business_size.name, size: @business_size.size }
    assert_redirected_to business_size_path(assigns(:business_size))
  end

  test "should destroy business_size" do
    assert_difference('BusinessSize.count', -1) do
      delete :destroy, id: @business_size
    end

    assert_redirected_to business_sizes_path
  end
end
