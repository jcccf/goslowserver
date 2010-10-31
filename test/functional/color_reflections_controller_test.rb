require 'test_helper'

class ColorReflectionsControllerTest < ActionController::TestCase
  setup do
    @color_reflection = color_reflections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:color_reflections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create color_reflection" do
    assert_difference('ColorReflection.count') do
      post :create, :color_reflection => @color_reflection.attributes
    end

    assert_redirected_to color_reflection_path(assigns(:color_reflection))
  end

  test "should show color_reflection" do
    get :show, :id => @color_reflection.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @color_reflection.to_param
    assert_response :success
  end

  test "should update color_reflection" do
    put :update, :id => @color_reflection.to_param, :color_reflection => @color_reflection.attributes
    assert_redirected_to color_reflection_path(assigns(:color_reflection))
  end

  test "should destroy color_reflection" do
    assert_difference('ColorReflection.count', -1) do
      delete :destroy, :id => @color_reflection.to_param
    end

    assert_redirected_to color_reflections_path
  end
end
