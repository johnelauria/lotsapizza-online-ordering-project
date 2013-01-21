class CreateProductMaintenances < ActiveRecord::Migration
  def change
    create_table :product_maintenances do |t|
      t.integer :product_code, null: false
      t.text :product_description, null: false
      t.string :po_unit, null: false
      t.string :issue_unit, null: false
      t.integer :conversion_factor
      t.boolean :subject_to_vat
      t.boolean :subject_to_finance_late_charge
      t.boolean :eligible_for_discount
      t.decimal :purchase_price, default: 0, null: false
      t.decimal :selling_price, default: 0, null: false
      t.integer :re_order_point
      t.string :vendor
      t.string :stocking_company
      t.boolean :raw_materials
      t.string :sort_code
    end
  end
end
