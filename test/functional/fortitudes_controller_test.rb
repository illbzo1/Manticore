require 'test_helper'

class FortitudesControllerTest < ActionController::TestCase
  setup do
    @fortitude = fortitudes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortitudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortitude" do
    assert_difference('Fortitude.count') do
      post :create, :fortitude => @fortitude.attributes
    end

    assert_redirected_to fortitude_path(assigns(:fortitude))
  end

  test "should show fortitude" do
    get :show, :id => @fortitude.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fortitude.to_param
    assert_response :success
  end

  test "should update fortitude" do
    put :update, :id => @fortitude.to_param, :fortitude => @fortitude.attributes
    assert_redirected_to fortitude_path(assigns(:fortitude))
  end

  test "should destroy fortitude" do
    assert_difference('Fortitude.count', -1) do
      delete :destroy, :id => @fortitude.to_param
    end

    assert_redirected_to fortitudes_path
  end
end
