class CreateSoHeaders < ActiveRecord::Migration
  def change
    create_table :so_headers do |t|
      t.integer :outlet_code
      t.string :company_code
      t.string :outlet_name
      t.string :customer_name
      t.string :delivery_group
      t.integer :so_number
      t.date :order_date
      t.date :delivery_date
      t.date :production_date
      t.decimal :total_order_amount
      t.decimal :vat
      t.decimal :msf_charge
      t.decimal :delivery_charge
      t.decimal :grand_total
      t.string :order_status
      t.integer :sales_invoice_num
      t.date :sales_invoice_date

      t.timestamps
    end
  end
end
