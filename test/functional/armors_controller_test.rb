require 'test_helper'

class ArmorsControllerTest < ActionController::TestCase
  setup do
    @armor = armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armor" do
    assert_difference('Armor.count') do
      post :create, :armor => @armor.attributes
    end

    assert_redirected_to armor_path(assigns(:armor))
  end

  test "should show armor" do
    get :show, :id => @armor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @armor.to_param
    assert_response :success
  end

  test "should update armor" do
    put :update, :id => @armor.to_param, :armor => @armor.attributes
    assert_redirected_to armor_path(assigns(:armor))
  end

  test "should destroy armor" do
    assert_difference('Armor.count', -1) do
      delete :destroy, :id => @armor.to_param
    end

    assert_redirected_to armors_path
  end
end
