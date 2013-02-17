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

  #Filters / Restrictions

  def sign_in_first_admin
    if !admin?
      flash[:notice] = "Please sign in first"
      redirect_to root_path
    end
  end

  def sign_in_first
    unless signed_in? || admin?
      flash[:notice] = "Please sign in first"
      redirect_to root_path
    end
  end

  def restrict_customer_access
    if signed_in?
      flash[:error] = "Sorry, the page requested is restricted for your account. Only Administrators have access to that page"
      redirect_to root_path
    end
  end

  def correct_user?
    if signed_in?
    @customer = CustomerMaintenance.find(params[:id])
    if current_user != @customer
      flash[:error] = "You are not authorized to view or manipulate other accounts"
      redirect_to root_path
    end
    end
    end
end