class RemoveDetailsFromProductMaintenance < ActiveRecord::Migration
  def up
  	remove_column :product_maintenances, :re_order_point
  	remove_column :product_maintenances, :vendor
  	remove_column :product_maintenances, :stocking_company
  end

  def down
  	add_column :product_maintenances, :re_order_point, :string
  	add_column :product_maintenances, :vendor, :string
  	add_column :product_maintenances, :stocking_company, :string
  end
end