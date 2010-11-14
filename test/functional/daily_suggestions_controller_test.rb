require 'test_helper'

class DailySuggestionsControllerTest < ActionController::TestCase
  setup do
    @daily_suggestion = daily_suggestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_suggestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_suggestion" do
    assert_difference('DailySuggestion.count') do
      post :create, :daily_suggestion => @daily_suggestion.attributes
    end

    assert_redirected_to daily_suggestion_path(assigns(:daily_suggestion))
  end

  test "should show daily_suggestion" do
    get :show, :id => @daily_suggestion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @daily_suggestion.to_param
    assert_response :success
  end

  test "should update daily_suggestion" do
    put :update, :id => @daily_suggestion.to_param, :daily_suggestion => @daily_suggestion.attributes
    assert_redirected_to daily_suggestion_path(assigns(:daily_suggestion))
  end

  test "should destroy daily_suggestion" do
    assert_difference('DailySuggestion.count', -1) do
      delete :destroy, :id => @daily_suggestion.to_param
    end

    assert_redirected_to daily_suggestions_path
  end
end
