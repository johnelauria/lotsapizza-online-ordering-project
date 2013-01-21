class AddColumnsToCustomerMaintenances < ActiveRecord::Migration
  def change
    add_column :customer_maintenances, :billing_address, :text
    add_column :customer_maintenances, :billing_city_town, :text
    add_column :customer_maintenances, :production_group_code, :string
    add_column :customer_maintenances, :additional_notes, :text
  end
end
