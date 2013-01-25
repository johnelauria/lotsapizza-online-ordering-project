class Admin < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :username, :remember_token

  has_secure_password

  before_save :create_remember_token

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
