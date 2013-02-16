class ChangeDeliveryNotesToText < ActiveRecord::Migration
  def up
  	remove_column :customer_maintenances, :delivery_notes
  	add_column :customer_maintenances, :delivery_notes, :text
  end

  def down
  	remove_column :customer_maintenances, :delivery_notes
  	add_column :customer_maintenances, :delivery_notes, :string
  end
end
