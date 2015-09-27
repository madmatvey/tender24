require 'test_helper'

class ProcurementsControllerTest < ActionController::TestCase
  setup do
    @procurement = procurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procurement" do
    assert_difference('Procurement.count') do
      post :create, procurement: { company_id: @procurement.company_id, description: @procurement.description, name: @procurement.name, price: @procurement.price, status: @procurement.status }
    end

    assert_redirected_to procurement_path(assigns(:procurement))
  end

  test "should show procurement" do
    get :show, id: @procurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procurement
    assert_response :success
  end

  test "should update procurement" do
    patch :update, id: @procurement, procurement: { company_id: @procurement.company_id, description: @procurement.description, name: @procurement.name, price: @procurement.price, status: @procurement.status }
    assert_redirected_to procurement_path(assigns(:procurement))
  end

  test "should destroy procurement" do
    assert_difference('Procurement.count', -1) do
      delete :destroy, id: @procurement
    end

    assert_redirected_to procurements_path
  end
end
