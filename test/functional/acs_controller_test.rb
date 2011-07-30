require 'test_helper'

class AcsControllerTest < ActionController::TestCase
  setup do
    @ac = acs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ac" do
    assert_difference('Ac.count') do
      post :create, :ac => @ac.attributes
    end

    assert_redirected_to ac_path(assigns(:ac))
  end

  test "should show ac" do
    get :show, :id => @ac.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ac.to_param
    assert_response :success
  end

  test "should update ac" do
    put :update, :id => @ac.to_param, :ac => @ac.attributes
    assert_redirected_to ac_path(assigns(:ac))
  end

  test "should destroy ac" do
    assert_difference('Ac.count', -1) do
      delete :destroy, :id => @ac.to_param
    end

    assert_redirected_to acs_path
  end
end
