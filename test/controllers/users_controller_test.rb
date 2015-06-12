require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { children: @user.children, cnp: @user.cnp, contactId: @user.contactId, description: @user.description, firstName: @user.firstName, icNumber: @user.icNumber, icSerie: @user.icSerie, lastName: @user.lastName, maritalStatus: @user.maritalStatus, nationality: @user.nationality, sex: @user.sex }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { children: @user.children, cnp: @user.cnp, contactId: @user.contactId, description: @user.description, firstName: @user.firstName, icNumber: @user.icNumber, icSerie: @user.icSerie, lastName: @user.lastName, maritalStatus: @user.maritalStatus, nationality: @user.nationality, sex: @user.sex }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
