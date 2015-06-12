require 'test_helper'

class UserInvaliditiesControllerTest < ActionController::TestCase
  setup do
    @user_invalidity = user_invalidities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_invalidities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_invalidity" do
    assert_difference('UserInvalidity.count') do
      post :create, user_invalidity: { grade: @user_invalidity.grade, invalidityId: @user_invalidity.invalidityId, userId: @user_invalidity.userId }
    end

    assert_redirected_to user_invalidity_path(assigns(:user_invalidity))
  end

  test "should show user_invalidity" do
    get :show, id: @user_invalidity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_invalidity
    assert_response :success
  end

  test "should update user_invalidity" do
    patch :update, id: @user_invalidity, user_invalidity: { grade: @user_invalidity.grade, invalidityId: @user_invalidity.invalidityId, userId: @user_invalidity.userId }
    assert_redirected_to user_invalidity_path(assigns(:user_invalidity))
  end

  test "should destroy user_invalidity" do
    assert_difference('UserInvalidity.count', -1) do
      delete :destroy, id: @user_invalidity
    end

    assert_redirected_to user_invalidities_path
  end
end
