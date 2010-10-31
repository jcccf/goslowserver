require 'test_helper'

class TextReflectionsControllerTest < ActionController::TestCase
  setup do
    @text_reflection = text_reflections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_reflections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_reflection" do
    assert_difference('TextReflection.count') do
      post :create, :text_reflection => @text_reflection.attributes
    end

    assert_redirected_to text_reflection_path(assigns(:text_reflection))
  end

  test "should show text_reflection" do
    get :show, :id => @text_reflection.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @text_reflection.to_param
    assert_response :success
  end

  test "should update text_reflection" do
    put :update, :id => @text_reflection.to_param, :text_reflection => @text_reflection.attributes
    assert_redirected_to text_reflection_path(assigns(:text_reflection))
  end

  test "should destroy text_reflection" do
    assert_difference('TextReflection.count', -1) do
      delete :destroy, :id => @text_reflection.to_param
    end

    assert_redirected_to text_reflections_path
  end
end
