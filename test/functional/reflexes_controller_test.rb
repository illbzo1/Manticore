require 'test_helper'

class ReflexesControllerTest < ActionController::TestCase
  setup do
    @reflex = reflexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reflexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reflex" do
    assert_difference('Reflex.count') do
      post :create, :reflex => @reflex.attributes
    end

    assert_redirected_to reflex_path(assigns(:reflex))
  end

  test "should show reflex" do
    get :show, :id => @reflex.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reflex.to_param
    assert_response :success
  end

  test "should update reflex" do
    put :update, :id => @reflex.to_param, :reflex => @reflex.attributes
    assert_redirected_to reflex_path(assigns(:reflex))
  end

  test "should destroy reflex" do
    assert_difference('Reflex.count', -1) do
      delete :destroy, :id => @reflex.to_param
    end

    assert_redirected_to reflexes_path
  end
end
