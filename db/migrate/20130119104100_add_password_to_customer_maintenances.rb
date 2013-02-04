class AddPasswordToCustomerMaintenances < ActiveRecord::Migration
  def change
    add_column :customer_maintenances, :password_digest, :string
    add_column :customer_maintenances, :remember_token, :string
  end
end
