require 'test_helper'

class LogScreensControllerTest < ActionController::TestCase
  setup do
    @log_screen = log_screens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_screens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_screen" do
    assert_difference('LogScreen.count') do
      post :create, :log_screen => @log_screen.attributes
    end

    assert_redirected_to log_screen_path(assigns(:log_screen))
  end

  test "should show log_screen" do
    get :show, :id => @log_screen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_screen.to_param
    assert_response :success
  end

  test "should update log_screen" do
    put :update, :id => @log_screen.to_param, :log_screen => @log_screen.attributes
    assert_redirected_to log_screen_path(assigns(:log_screen))
  end

  test "should destroy log_screen" do
    assert_difference('LogScreen.count', -1) do
      delete :destroy, :id => @log_screen.to_param
    end

    assert_redirected_to log_screens_path
  end
end
