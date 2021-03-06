require 'test_helper'

class UserCategoriesControllerTest < ActionController::TestCase
  setup do
    @user_category = user_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_category" do
    assert_difference('UserCategory.count') do
      post :create, user_category: { categoryId: @user_category.categoryId, city: @user_category.city, institutionName: @user_category.institutionName, userId: @user_category.userId }
    end

    assert_redirected_to user_category_path(assigns(:user_category))
  end

  test "should show user_category" do
    get :show, id: @user_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_category
    assert_response :success
  end

  test "should update user_category" do
    patch :update, id: @user_category, user_category: { categoryId: @user_category.categoryId, city: @user_category.city, institutionName: @user_category.institutionName, userId: @user_category.userId }
    assert_redirected_to user_category_path(assigns(:user_category))
  end

  test "should destroy user_category" do
    assert_difference('UserCategory.count', -1) do
      delete :destroy, id: @user_category
    end

    assert_redirected_to user_categories_path
  end
end
