class AddCategoryToProductMaintenance < ActiveRecord::Migration
  def change
    add_column :product_maintenances, :category, :string
  end
end
