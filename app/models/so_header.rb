class SoHeader < ActiveRecord::Base
  attr_accessible :company_code, :customer_name, :delivery_charge, :delivery_date, :delivery_group, :grand_total, :msf_charge, :order_date, :order_status, :outlet_code, :outlet_name, :production_date, :sales_invoice_date, :sales_invoice_num, :so_number, :total_order_amount, :vat
  belongs_to :customer_maintenance
  has_many :so_details
end
