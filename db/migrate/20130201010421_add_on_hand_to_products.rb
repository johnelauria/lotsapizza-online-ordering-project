class AddOnHandToProducts < ActiveRecord::Migration
  def change
    add_column :product_maintenances, :on_hand, :integer
  end
end
