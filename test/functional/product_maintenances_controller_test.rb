require 'test_helper'

class ProductMaintenancesControllerTest < ActionController::TestCase
  setup do
    @product_maintenance = product_maintenances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_maintenances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_maintenance" do
    assert_difference('ProductMaintenance.count') do
      post :create, product_maintenance: { conversion_factor: @product_maintenance.conversion_factor, eligible_for_discount: @product_maintenance.eligible_for_discount, issue_unit: @product_maintenance.issue_unit, po_unit: @product_maintenance.po_unit, product_code: @product_maintenance.product_code, product_description: @product_maintenance.product_description, purchase_price: @product_maintenance.purchase_price, raw_materials: @product_maintenance.raw_materials, re_order_point: @product_maintenance.re_order_point, selling_price: @product_maintenance.selling_price, sort_code: @product_maintenance.sort_code, stocking_company: @product_maintenance.stocking_company, subject_to_finance_late_charge: @product_maintenance.subject_to_finance_late_charge, subject_to_vat: @product_maintenance.subject_to_vat, vendor: @product_maintenance.vendor }
    end

    assert_redirected_to product_maintenance_path(assigns(:product_maintenance))
  end

  test "should show product_maintenance" do
    get :show, id: @product_maintenance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_maintenance
    assert_response :success
  end

  test "should update product_maintenance" do
    put :update, id: @product_maintenance, product_maintenance: { conversion_factor: @product_maintenance.conversion_factor, eligible_for_discount: @product_maintenance.eligible_for_discount, issue_unit: @product_maintenance.issue_unit, po_unit: @product_maintenance.po_unit, product_code: @product_maintenance.product_code, product_description: @product_maintenance.product_description, purchase_price: @product_maintenance.purchase_price, raw_materials: @product_maintenance.raw_materials, re_order_point: @product_maintenance.re_order_point, selling_price: @product_maintenance.selling_price, sort_code: @product_maintenance.sort_code, stocking_company: @product_maintenance.stocking_company, subject_to_finance_late_charge: @product_maintenance.subject_to_finance_late_charge, subject_to_vat: @product_maintenance.subject_to_vat, vendor: @product_maintenance.vendor }
    assert_redirected_to product_maintenance_path(assigns(:product_maintenance))
  end

  test "should destroy product_maintenance" do
    assert_difference('ProductMaintenance.count', -1) do
      delete :destroy, id: @product_maintenance
    end

    assert_redirected_to product_maintenances_path
  end
end
