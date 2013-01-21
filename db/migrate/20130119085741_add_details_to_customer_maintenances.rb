class AddDetailsToCustomerMaintenances < ActiveRecord::Migration
  def change
    add_column :customer_maintenances, :outlet_address, :text
    add_column :customer_maintenances, :outlet_city, :string
    add_column :customer_maintenances, :outlet_billing_flag, :string
    add_column :customer_maintenances, :terms, :string
    add_column :customer_maintenances, :msf_charge, :Integer
    add_column :customer_maintenances, :delivery_charge, :Integer
    add_column :customer_maintenances, :status, :string
    add_column :customer_maintenances, :order_schedule, :string
    add_column :customer_maintenances, :delivery_group_code, :string
    add_column :customer_maintenances, :delivery_notes, :string
    add_column :customer_maintenances, :assess_finance_late_charges, :boolean
    add_column :customer_maintenances, :finance_late_charges, :Integer
    add_column :customer_maintenances, :credit_limit, :Integer
  end
end
