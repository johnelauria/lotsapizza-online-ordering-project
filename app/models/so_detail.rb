class SoDetail < ActiveRecord::Base
  attr_accessible :amount, :customer_name, :delivery_group, :issue_unit, :outlet_code, :outlet_name, :product_code, :quantity, :sales_invoice_num, :so_number, :unit_price, :so_header_id
  belongs_to :so_header

  before_save :calculate_total_amount

  def calculate_total_amount
    self.amount = self.quantity * self.unit_price
  end
end
