class SoHeader < ActiveRecord::Base
  attr_accessible :company_code, :customer_name, :delivery_charge, :delivery_date, :delivery_group, :grand_total, :msf_charge, :order_date, :order_status, :outlet_code, :outlet_name, :production_date, :sales_invoice_date, :sales_invoice_num, :so_number, :total_order_amount, :vat, :customer_maintenance_id
  has_many :so_details, dependent: :destroy
  belongs_to :customer_maintenance

  def so_number
    self.id
  end
end
