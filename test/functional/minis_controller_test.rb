require 'test_helper'

class MinisControllerTest < ActionController::TestCase
  setup do
    @mini = minis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini" do
    assert_difference('Mini.count') do
      post :create, mini: { content: @mini.content }
    end

    assert_redirected_to mini_path(assigns(:mini))
  end

  test "should show mini" do
    get :show, id: @mini
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini
    assert_response :success
  end

  test "should update mini" do
    put :update, id: @mini, mini: { content: @mini.content }
    assert_redirected_to mini_path(assigns(:mini))
  end

  test "should destroy mini" do
    assert_difference('Mini.count', -1) do
      delete :destroy, id: @mini
    end

    assert_redirected_to minis_path
  end
end
