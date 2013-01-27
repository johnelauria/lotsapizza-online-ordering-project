class ProductMaintenance < ActiveRecord::Base
  attr_accessible :conversion_factor, :eligible_for_discount, :issue_unit, :po_unit, :product_code, :product_description, :purchase_price, :raw_materials, :re_order_point, :selling_price, :sort_code, :stocking_company, :subject_to_finance_late_charge, :subject_to_vat, :vendor, :category

  validates :product_code, presence: true, length: { maximum:3 }
  validates :product_description, :po_unit, :issue_unit, presence: true

  def vat_deduction_value
    if self.subject_to_vat?
      vat_deduction_value = self.purchase_price * 0.12
    else
      vat_deduction_value = 0
    end
  end
end
