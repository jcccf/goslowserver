require 'test_helper'

class PhotoReflectionsControllerTest < ActionController::TestCase
  setup do
    @photo_reflection = photo_reflections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_reflections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_reflection" do
    assert_difference('PhotoReflection.count') do
      post :create, :photo_reflection => @photo_reflection.attributes
    end

    assert_redirected_to photo_reflection_path(assigns(:photo_reflection))
  end

  test "should show photo_reflection" do
    get :show, :id => @photo_reflection.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @photo_reflection.to_param
    assert_response :success
  end

  test "should update photo_reflection" do
    put :update, :id => @photo_reflection.to_param, :photo_reflection => @photo_reflection.attributes
    assert_redirected_to photo_reflection_path(assigns(:photo_reflection))
  end

  test "should destroy photo_reflection" do
    assert_difference('PhotoReflection.count', -1) do
      delete :destroy, :id => @photo_reflection.to_param
    end

    assert_redirected_to photo_reflections_path
  end
end
