require 'test_helper'

class BlorgsControllerTest < ActionController::TestCase
  setup do
    @blorg = blorgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blorgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blorg" do
    assert_difference('Blorg.count') do
      post :create, :blorg => @blorg.attributes
    end

    assert_redirected_to blorg_path(assigns(:blorg))
  end

  test "should show blorg" do
    get :show, :id => @blorg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blorg.to_param
    assert_response :success
  end

  test "should update blorg" do
    put :update, :id => @blorg.to_param, :blorg => @blorg.attributes
    assert_redirected_to blorg_path(assigns(:blorg))
  end

  test "should destroy blorg" do
    assert_difference('Blorg.count', -1) do
      delete :destroy, :id => @blorg.to_param
    end

    assert_redirected_to blorgs_path
  end
end
