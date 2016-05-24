require 'test_helper'

class PlusrsControllerTest < ActionController::TestCase
  setup do
    @plusr = plusrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plusrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plusr" do
    assert_difference('Plusr.count') do
      post :create, plusr: { plan_id: @plusr.plan_id, user_id: @plusr.user_id }
    end

    assert_redirected_to plusr_path(assigns(:plusr))
  end

  test "should show plusr" do
    get :show, id: @plusr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plusr
    assert_response :success
  end

  test "should update plusr" do
    patch :update, id: @plusr, plusr: { plan_id: @plusr.plan_id, user_id: @plusr.user_id }
    assert_redirected_to plusr_path(assigns(:plusr))
  end

  test "should destroy plusr" do
    assert_difference('Plusr.count', -1) do
      delete :destroy, id: @plusr
    end

    assert_redirected_to plusrs_path
  end
end
