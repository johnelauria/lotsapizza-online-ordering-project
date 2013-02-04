class AddChargeInfoToCustomerMaintenance < ActiveRecord::Migration
  def change
    add_column :customer_maintenances, :msf_charge_computation, :string
    add_column :customer_maintenances, :delivery_charge_computation, :string
  end
end
