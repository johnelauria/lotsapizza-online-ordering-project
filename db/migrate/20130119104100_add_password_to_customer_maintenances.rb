class AddPasswordToCustomerMaintenances < ActiveRecord::Migration
  def change
    add_column :customer_maintenances, :password_digest, :String
    add_column :customer_maintenances, :remember_token, :String
  end
end
