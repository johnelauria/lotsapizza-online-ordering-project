class SoDetail < ActiveRecord::Base
  attr_accessible :amount, :customer_name, :delivery_group, :issue_unit, :outlet_code, :outlet_name, :product_code, :quantity, :sales_invoice_num, :so_number, :unit_price
  belongs_to :so_header, foreign_key: :so_number
  belongs_to :product_maintenance, foreign_key: :product_code
end
