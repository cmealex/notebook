require 'test_helper'

class InvaliditiesControllerTest < ActionController::TestCase
  setup do
    @invalidity = invalidities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invalidities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invalidity" do
    assert_difference('Invalidity.count') do
      post :create, invalidity: { grade: @invalidity.grade, type: @invalidity.type }
    end

    assert_redirected_to invalidity_path(assigns(:invalidity))
  end

  test "should show invalidity" do
    get :show, id: @invalidity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invalidity
    assert_response :success
  end

  test "should update invalidity" do
    patch :update, id: @invalidity, invalidity: { grade: @invalidity.grade, type: @invalidity.type }
    assert_redirected_to invalidity_path(assigns(:invalidity))
  end

  test "should destroy invalidity" do
    assert_difference('Invalidity.count', -1) do
      delete :destroy, id: @invalidity
    end

    assert_redirected_to invalidities_path
  end
end
