class ProductMaintenance < ActiveRecord::Base
  attr_accessible :conversion_factor, :eligible_for_discount, :issue_unit, :po_unit, :product_code, :product_description, :purchase_price, :raw_materials, :re_order_point, :selling_price, :sort_code, :stocking_company, :subject_to_finance_late_charge, :subject_to_vat, :vendor

  has_many :so_details
end
