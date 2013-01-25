class SessionsController < ApplicationController

  def new
  end

  def create
    customer = CustomerMaintenance.find_by_outlet_code(params[:session][:outlet_code])
    admin = Admin.find_by_username(params[:session][:username])
    if customer && customer.authenticate(params[:session][:password])
      flash[:info] = "Hello #{customer.customer_name}!"
      sign_in customer
      redirect_to product_maintenances_path
    else
      if admin && admin.authenticate(params[:session][:password])
        flash[:info] = "Admin"
        admin_access admin
        redirect_to so_headers_path
      else
      flash[:error] = "Incorrect login"
      redirect_to new_session_path
      end
    end
    end

  def destroy
    sign_out
    redirect_to root_path
    flash[:success] = "You have successfully signed out!"
  end
end