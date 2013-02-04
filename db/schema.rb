# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130127040745) do
=======
ActiveRecord::Schema.define(:version => 20130127131800) do
>>>>>>> d96fef68555b9d53b0086d928cdf258cee8d5b95

  create_table "admins", :force => true do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "remember_token"
  end

  create_table "customer_maintenances", :force => true do |t|
    t.string   "customer_type"
    t.string   "customer_name"
    t.string   "customer_tax_id"
    t.boolean  "vat_registered"
    t.string   "contact_name"
    t.string   "primary_phone"
    t.string   "mobile_num"
    t.string   "fax_num"
    t.string   "email_address"
    t.integer  "outlet_code"
    t.string   "outlet_name"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "outlet_address"
    t.string   "outlet_city"
    t.string   "outlet_billing_flag"
    t.string   "terms"
    t.string   "status"
    t.string   "order_schedule"
    t.string   "delivery_group_code"
    t.string   "delivery_notes"
    t.boolean  "assess_finance_late_charges"
    t.integer  "finance_late_charges"
    t.integer  "credit_limit"
    t.text     "billing_address"
    t.text     "billing_city_town"
    t.string   "production_group_code"
    t.text     "additional_notes"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "msf_charge_computation"
    t.string   "delivery_charge_computation"
    t.decimal  "msf_charge",                  :default => 0.0, :null => false
    t.decimal  "delivery_charge",             :default => 0.0, :null => false
  end

  create_table "product_maintenances", :force => true do |t|
    t.text    "product_description",                             :null => false
    t.string  "po_unit",                                         :null => false
    t.string  "issue_unit",                                      :null => false
    t.integer "conversion_factor"
    t.boolean "subject_to_vat"
    t.boolean "subject_to_finance_late_charge"
    t.boolean "eligible_for_discount"
    t.decimal "purchase_price",                 :default => 0.0, :null => false
    t.decimal "selling_price",                  :default => 0.0, :null => false
    t.boolean "raw_materials"
    t.string  "sort_code"
    t.string  "product_code"
    t.string  "category"
  end

  create_table "so_details", :force => true do |t|
    t.string   "outlet_name"
    t.string   "customer_name"
    t.string   "delivery_group"
    t.integer  "so_number"
    t.integer  "sales_invoice_num"
    t.string   "product_code"
    t.integer  "issue_unit"
    t.decimal  "unit_price",        :default => 0.0, :null => false
    t.integer  "quantity",          :default => 1,   :null => false
    t.decimal  "amount",            :default => 0.0, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "so_header_id"
    t.string   "outlet_code"
  end

  create_table "so_headers", :force => true do |t|
    t.string   "company_code"
    t.string   "outlet_name"
    t.string   "customer_name"
    t.string   "delivery_group"
    t.integer  "so_number"
    t.date     "order_date"
    t.date     "delivery_date"
    t.date     "production_date"
    t.decimal  "total_order_amount"
    t.decimal  "vat"
    t.decimal  "msf_charge"
    t.decimal  "delivery_charge"
    t.decimal  "grand_total"
    t.string   "order_status"
    t.integer  "sales_invoice_num"
    t.date     "sales_invoice_date"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "customer_maintenance_id"
    t.string   "outlet_code"
  end

  create_table "system_tables", :force => true do |t|
    t.string  "company_name"
    t.text    "company_address"
    t.string  "tax_ID_number"
    t.boolean "vat_registered"
    t.string  "vat_registration"
    t.string  "bir_accreditation_number"
    t.decimal "vat_percent"
    t.string  "telephone_number"
    t.string  "fax_number"
    t.string  "email_address"
    t.string  "web_address"
  end

end
