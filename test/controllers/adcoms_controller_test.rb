require 'test_helper'

class AdcomsControllerTest < ActionController::TestCase
  setup do
    @adcom = adcoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adcoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adcom" do
    assert_difference('Adcom.count') do
      post :create, adcom: { admin_id: @adcom.admin_id, company_id: @adcom.company_id }
    end

    assert_redirected_to adcom_path(assigns(:adcom))
  end

  test "should show adcom" do
    get :show, id: @adcom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adcom
    assert_response :success
  end

  test "should update adcom" do
    patch :update, id: @adcom, adcom: { admin_id: @adcom.admin_id, company_id: @adcom.company_id }
    assert_redirected_to adcom_path(assigns(:adcom))
  end

  test "should destroy adcom" do
    assert_difference('Adcom.count', -1) do
      delete :destroy, id: @adcom
    end

    assert_redirected_to adcoms_path
  end
end
