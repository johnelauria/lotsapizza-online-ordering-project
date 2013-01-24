class ChangeProductCodeToInt < ActiveRecord::Migration
  def up
    remove_column :product_maintenances, :product_code
    add_column :product_maintenances, :product_code, :string
  end

  def down
    add_column :product_maintenances, :product_code, :string
    remove_column :product_maintenances, :product_code
  end
end
