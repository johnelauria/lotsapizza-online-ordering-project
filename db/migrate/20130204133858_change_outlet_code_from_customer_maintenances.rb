class ChangeOutletCodeFromCustomerMaintenances < ActiveRecord::Migration
  def up
  	remove_column :customer_maintenances, :outlet_code
  	add_column :customer_maintenances, :outlet_code, :string
  end

  def down
  	remove_column :customer_maintenances, :outlet_code
  	add_column :customer_maintenances, :outlet_code, :integer
  end
end
