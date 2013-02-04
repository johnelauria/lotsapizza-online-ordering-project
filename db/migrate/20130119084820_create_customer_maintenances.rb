class CreateCustomerMaintenances < ActiveRecord::Migration
  def change
    create_table :customer_maintenances do |t|
      t.string :customer_type
      t.string :customer_name
      t.string :customer_tax_id
      t.boolean :vat_registered
      t.string :contact_name
      t.string :primary_phone
      t.string :mobile_num
      t.string :fax_num
      t.string :email_address
      t.integer :outlet_code
      t.string :outlet_name

      t.timestamps
    end
  end
end
