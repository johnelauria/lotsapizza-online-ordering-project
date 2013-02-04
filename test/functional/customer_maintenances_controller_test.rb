require 'test_helper'

class CustomerMaintenancesControllerTest < ActionController::TestCase
  setup do
    @customer_maintenance = customer_maintenances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_maintenances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_maintenance" do
    assert_difference('CustomerMaintenance.count') do
      post :create, customer_maintenance: { contact_name: @customer_maintenance.contact_name, customer_name: @customer_maintenance.customer_name, customer_tax_id: @customer_maintenance.customer_tax_id, customer_type: @customer_maintenance.customer_type, email_address: @customer_maintenance.email_address, fax_num: @customer_maintenance.fax_num, mobile_num: @customer_maintenance.mobile_num, outlet_code: @customer_maintenance.outlet_code, outlet_name: @customer_maintenance.outlet_name, primary_phone: @customer_maintenance.primary_phone, vat_registered: @customer_maintenance.vat_registered }
    end

    assert_redirected_to customer_maintenance_path(assigns(:customer_maintenance))
  end

  test "should show customer_maintenance" do
    get :show, id: @customer_maintenance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_maintenance
    assert_response :success
  end

  test "should update customer_maintenance" do
    put :update, id: @customer_maintenance, customer_maintenance: { contact_name: @customer_maintenance.contact_name, customer_name: @customer_maintenance.customer_name, customer_tax_id: @customer_maintenance.customer_tax_id, customer_type: @customer_maintenance.customer_type, email_address: @customer_maintenance.email_address, fax_num: @customer_maintenance.fax_num, mobile_num: @customer_maintenance.mobile_num, outlet_code: @customer_maintenance.outlet_code, outlet_name: @customer_maintenance.outlet_name, primary_phone: @customer_maintenance.primary_phone, vat_registered: @customer_maintenance.vat_registered }
    assert_redirected_to customer_maintenance_path(assigns(:customer_maintenance))
  end

  test "should destroy customer_maintenance" do
    assert_difference('CustomerMaintenance.count', -1) do
      delete :destroy, id: @customer_maintenance
    end

    assert_redirected_to customer_maintenances_path
  end
end
