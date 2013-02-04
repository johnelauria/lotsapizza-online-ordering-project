require 'test_helper'

class SoDetailsControllerTest < ActionController::TestCase
  setup do
    @so_detail = so_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:so_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create so_detail" do
    assert_difference('SoDetail.count') do
      post :create, so_detail: { amount: @so_detail.amount, customer_name: @so_detail.customer_name, delivery_group: @so_detail.delivery_group, issue_unit: @so_detail.issue_unit, outlet_code: @so_detail.outlet_code, outlet_name: @so_detail.outlet_name, product_code: @so_detail.product_code, quantity: @so_detail.quantity, sales_invoice_num: @so_detail.sales_invoice_num, so_number: @so_detail.so_number, unit_price: @so_detail.unit_price }
    end

    assert_redirected_to so_detail_path(assigns(:so_detail))
  end

  test "should show so_detail" do
    get :show, id: @so_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @so_detail
    assert_response :success
  end

  test "should update so_detail" do
    put :update, id: @so_detail, so_detail: { amount: @so_detail.amount, customer_name: @so_detail.customer_name, delivery_group: @so_detail.delivery_group, issue_unit: @so_detail.issue_unit, outlet_code: @so_detail.outlet_code, outlet_name: @so_detail.outlet_name, product_code: @so_detail.product_code, quantity: @so_detail.quantity, sales_invoice_num: @so_detail.sales_invoice_num, so_number: @so_detail.so_number, unit_price: @so_detail.unit_price }
    assert_redirected_to so_detail_path(assigns(:so_detail))
  end

  test "should destroy so_detail" do
    assert_difference('SoDetail.count', -1) do
      delete :destroy, id: @so_detail
    end

    assert_redirected_to so_details_path
  end
end
