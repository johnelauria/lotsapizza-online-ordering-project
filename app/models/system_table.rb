class SystemTable < ActiveRecord::Base
  attr_accessible :bir_accreditation_number, :company_address, :company_name, :email_address, :fax_number, :tax_ID_number, :telephone_number, :vat_percent, :vat_registered, :vat_registration, :web_address
end
