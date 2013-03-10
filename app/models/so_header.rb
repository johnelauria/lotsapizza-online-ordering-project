class SoHeader < ActiveRecord::Base
  attr_accessible :company_code, :customer_name, :delivery_charge, :delivery_date, :delivery_group, :grand_total, :msf_charge, :order_date, :order_status, :outlet_code, :outlet_name, :production_date, :sales_invoice_date, :sales_invoice_num, :so_number, :total_order_amount, :vat, :customer_maintenance_id
  has_many :so_details, dependent: :destroy
  belongs_to :customer_maintenance

  def so_number
    self.id
  end

  def total_order_amount
    self.so_details.map(&:amount).sum
  end

  def vat
    self.so_details.map(&:vat_deduction).sum
  end

  def grand_total
    unless self.total_order_amount == 0
      self.total_order_amount + self.msf_charge + self.delivery_charge
    else
      0
    end
  end

  def msf_charge
    if self.customer_maintenance.msf_charge_computation == "Flat charge"
      self.customer_maintenance.msf_charge
    else
      self.so_details.map(&:amount).sum * (self.customer_maintenance.msf_charge / 100)
    end
  end

  def delivery_charge
    if self.customer_maintenance.delivery_charge_computation == "Flat Charge"
        self.customer_maintenance.delivery_charge
      else
        self.so_details.map(&:amount).sum * (self.customer_maintenance.delivery_charge / 100)
    end
  end
end
