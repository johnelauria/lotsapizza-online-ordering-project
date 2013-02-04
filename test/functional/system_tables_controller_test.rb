require 'test_helper'

class SystemTablesControllerTest < ActionController::TestCase
  setup do
    @system_table = system_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_table" do
    assert_difference('SystemTable.count') do
      post :create, system_table: { bir_accreditation_number: @system_table.bir_accreditation_number, company_address: @system_table.company_address, company_name: @system_table.company_name, email_address: @system_table.email_address, fax_number: @system_table.fax_number, tax_ID_number: @system_table.tax_ID_number, telephone_number: @system_table.telephone_number, vat_percent: @system_table.vat_percent, vat_registered: @system_table.vat_registered, vat_registration: @system_table.vat_registration, web_address: @system_table.web_address }
    end

    assert_redirected_to system_table_path(assigns(:system_table))
  end

  test "should show system_table" do
    get :show, id: @system_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_table
    assert_response :success
  end

  test "should update system_table" do
    put :update, id: @system_table, system_table: { bir_accreditation_number: @system_table.bir_accreditation_number, company_address: @system_table.company_address, company_name: @system_table.company_name, email_address: @system_table.email_address, fax_number: @system_table.fax_number, tax_ID_number: @system_table.tax_ID_number, telephone_number: @system_table.telephone_number, vat_percent: @system_table.vat_percent, vat_registered: @system_table.vat_registered, vat_registration: @system_table.vat_registration, web_address: @system_table.web_address }
    assert_redirected_to system_table_path(assigns(:system_table))
  end

  test "should destroy system_table" do
    assert_difference('SystemTable.count', -1) do
      delete :destroy, id: @system_table
    end

    assert_redirected_to system_tables_path
  end
end
