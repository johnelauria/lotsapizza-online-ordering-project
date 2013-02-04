class CreateSystemTables < ActiveRecord::Migration
  def change
    create_table :system_tables do |t|
      t.string :company_name
      t.text :company_address
      t.string :tax_ID_number
      t.boolean :vat_registered
      t.string :vat_registration
      t.string :bir_accreditation_number
      t.decimal :vat_percent
      t.string :telephone_number
      t.string :fax_number
      t.string :email_address
      t.string :web_address
    end
  end
end
