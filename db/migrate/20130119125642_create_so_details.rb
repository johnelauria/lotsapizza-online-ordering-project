class CreateSoDetails < ActiveRecord::Migration
  def change
    create_table :so_details do |t|
      t.integer :outlet_code
      t.string :outlet_name
      t.string :customer_name
      t.string :delivery_group
      t.integer :so_number
      t.integer :sales_invoice_num
      t.string :product_code
      t.integer :issue_unit
      t.decimal :unit_price, null: false, default: 0
      t.integer :quantity, null: false, default: 1
      t.decimal :amount, null: false, default: 0

      t.timestamps
    end
  end
end
