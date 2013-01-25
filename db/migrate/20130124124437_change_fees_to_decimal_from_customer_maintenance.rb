class ChangeFeesToDecimalFromCustomerMaintenance < ActiveRecord::Migration
  def up
    remove_column :customer_maintenances, :msf_charge
    remove_column :customer_maintenances, :delivery_charge
    add_column :customer_maintenances, :msf_charge, :decimal, default: 0, null: false
    add_column :customer_maintenances, :delivery_charge, :decimal, default: 0, null: false
  end

  def down
    remove_column :customer_maintenances, :msf_charge
    remove_column :customer_maintenances, :delivery_charge
    add_column :customer_maintenances, :msf_charge, :integer
    add_column :customer_maintenances, :delivery_charge, :integer
  end
end
