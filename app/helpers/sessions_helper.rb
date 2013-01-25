module SessionsHelper
  def sign_in(customer_maintenance)
    cookies.permanent[:remember_token] = customer_maintenance.remember_token
    self.current_user = customer_maintenance
  end

  def admin_access(admin)
    cookies.permanent[:remember_token] = admin.remember_token
    self.admin_user = admin
  end

  def admin?
    !admin_user.nil?
  end

  def signed_in?
    !current_user.nil?
  end

  def admin_user=(admin)
    @admin_user = admin
  end

  def admin_user
    @admin_user ||= Admin.find_by_remember_token(cookies[:remember_token])
  end

  def current_user=(customer_maintenance)
    @current_user = customer_maintenance
  end

  def current_user
    @customer_maintenance ||= CustomerMaintenance.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(customer_maintenance)
    customer_maintenance == current_user
  end

  def sign_out
    cookies.delete(:remember_token)
    current_user = nil
  end
end