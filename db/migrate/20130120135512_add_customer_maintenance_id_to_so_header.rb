class AddCustomerMaintenanceIdToSoHeader < ActiveRecord::Migration
  def change
    add_column :so_headers, :customer_maintenance_id, :Integer
  end
end
