require 'test_helper'

class SoHeadersControllerTest < ActionController::TestCase
  setup do
    @so_header = so_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:so_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create so_header" do
    assert_difference('SoHeader.count') do
      post :create, so_header: { company_code: @so_header.company_code, customer_name: @so_header.customer_name, delivery_charge: @so_header.delivery_charge, delivery_date: @so_header.delivery_date, delivery_group: @so_header.delivery_group, grand_total: @so_header.grand_total, msf_charge: @so_header.msf_charge, order_date: @so_header.order_date, order_status: @so_header.order_status, outlet_code: @so_header.outlet_code, outlet_name: @so_header.outlet_name, production_date: @so_header.production_date, sales_invoice_date: @so_header.sales_invoice_date, sales_invoice_num: @so_header.sales_invoice_num, so_number: @so_header.so_number, total_order_amount: @so_header.total_order_amount, vat: @so_header.vat }
    end

    assert_redirected_to so_header_path(assigns(:so_header))
  end

  test "should show so_header" do
    get :show, id: @so_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @so_header
    assert_response :success
  end

  test "should update so_header" do
    put :update, id: @so_header, so_header: { company_code: @so_header.company_code, customer_name: @so_header.customer_name, delivery_charge: @so_header.delivery_charge, delivery_date: @so_header.delivery_date, delivery_group: @so_header.delivery_group, grand_total: @so_header.grand_total, msf_charge: @so_header.msf_charge, order_date: @so_header.order_date, order_status: @so_header.order_status, outlet_code: @so_header.outlet_code, outlet_name: @so_header.outlet_name, production_date: @so_header.production_date, sales_invoice_date: @so_header.sales_invoice_date, sales_invoice_num: @so_header.sales_invoice_num, so_number: @so_header.so_number, total_order_amount: @so_header.total_order_amount, vat: @so_header.vat }
    assert_redirected_to so_header_path(assigns(:so_header))
  end

  test "should destroy so_header" do
    assert_difference('SoHeader.count', -1) do
      delete :destroy, id: @so_header
    end

    assert_redirected_to so_headers_path
  end
end
