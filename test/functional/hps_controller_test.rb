require 'test_helper'

class HpsControllerTest < ActionController::TestCase
  setup do
    @hp = hps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hp" do
    assert_difference('Hp.count') do
      post :create, :hp => @hp.attributes
    end

    assert_redirected_to hp_path(assigns(:hp))
  end

  test "should show hp" do
    get :show, :id => @hp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hp.to_param
    assert_response :success
  end

  test "should update hp" do
    put :update, :id => @hp.to_param, :hp => @hp.attributes
    assert_redirected_to hp_path(assigns(:hp))
  end

  test "should destroy hp" do
    assert_difference('Hp.count', -1) do
      delete :destroy, :id => @hp.to_param
    end

    assert_redirected_to hps_path
  end
end
