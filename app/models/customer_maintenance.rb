class CustomerMaintenance < ActiveRecord::Base
  attr_accessible :contact_name, :customer_name, :customer_tax_id, :customer_type, :email_address, :fax_num, :mobile_num, :outlet_code, :outlet_name, :primary_phone, :vat_registered, :contact_name, :primary_phone, :mobile_num, :fax_num, :email_address, :outlet_name, :outlet_address, :outlet_city, :outlet_billing_flag, :billing_address, :billing_city_town, :terms, :msf_charge, :delivery_charge, :status, :order_schedule, :delivery_group_code, :production_group_code, :delivery_notes, :additional_notes, :assess_finance_late_charges, :finance_late_charges, :credit_limit, :password, :password_confirmation, :remember_token
  has_secure_password
  has_many :so_headers

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_CUSTOMER_TAX_ID = /[\d]{3}-[\d]{3}-[\d]{3}-[\d]{3}/

  validates :customer_type, :customer_name, :vat_registered, :contact_name, :primary_phone, :outlet_name, :password, :password_confirmation, presence: true
  validates :customer_tax_id, format: { with: VALID_CUSTOMER_TAX_ID }
  validates :email_address, format: { with: VALID_EMAIL_REGEX }
  validates :outlet_code, uniqueness: true, presence: true, length: { minimum: 3, maximum: 3 }

  before_save :create_remember_token

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
