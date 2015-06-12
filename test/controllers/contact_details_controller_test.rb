require 'test_helper'

class ContactDetailsControllerTest < ActionController::TestCase
  setup do
    @contact_detail = contact_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_detail" do
    assert_difference('ContactDetail.count') do
      post :create, contact_detail: { birthPlace: @contact_detail.birthPlace, email1: @contact_detail.email1, email2: @contact_detail.email2, phone1: @contact_detail.phone1, phone2: @contact_detail.phone2, residence: @contact_detail.residence, userId: @contact_detail.userId }
    end

    assert_redirected_to contact_detail_path(assigns(:contact_detail))
  end

  test "should show contact_detail" do
    get :show, id: @contact_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_detail
    assert_response :success
  end

  test "should update contact_detail" do
    patch :update, id: @contact_detail, contact_detail: { birthPlace: @contact_detail.birthPlace, email1: @contact_detail.email1, email2: @contact_detail.email2, phone1: @contact_detail.phone1, phone2: @contact_detail.phone2, residence: @contact_detail.residence, userId: @contact_detail.userId }
    assert_redirected_to contact_detail_path(assigns(:contact_detail))
  end

  test "should destroy contact_detail" do
    assert_difference('ContactDetail.count', -1) do
      delete :destroy, id: @contact_detail
    end

    assert_redirected_to contact_details_path
  end
end
