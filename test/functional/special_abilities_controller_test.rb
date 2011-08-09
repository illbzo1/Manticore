require 'test_helper'

class SpecialAbilitiesControllerTest < ActionController::TestCase
  setup do
    @special_ability = special_abilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_abilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_ability" do
    assert_difference('SpecialAbility.count') do
      post :create, :special_ability => @special_ability.attributes
    end

    assert_redirected_to special_ability_path(assigns(:special_ability))
  end

  test "should show special_ability" do
    get :show, :id => @special_ability.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @special_ability.to_param
    assert_response :success
  end

  test "should update special_ability" do
    put :update, :id => @special_ability.to_param, :special_ability => @special_ability.attributes
    assert_redirected_to special_ability_path(assigns(:special_ability))
  end

  test "should destroy special_ability" do
    assert_difference('SpecialAbility.count', -1) do
      delete :destroy, :id => @special_ability.to_param
    end

    assert_redirected_to special_abilities_path
  end
end
