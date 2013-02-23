class SessionsController < ApplicationController

  def new
  end

  def create
    customer = CustomerMaintenance.find_by_outlet_code(params[:session][:outlet_code])
    admin = Admin.find_by_username(params[:session][:username])
    if customer && customer.authenticate(params[:session][:password])
      sign_in customer
      if Time.now.strftime("%H").to_i <= 12
          flash[:success] = "Good morning #{current_user.customer_name}!"
        else
          if Time.now.strftime("%H").to_i >= 12 && Time.now.strftime("%H").to_i <= 18
            flash[:success] = "Good afternoon #{current_user.customer_name}!"
          else
            flash[:success] = "Good evening #{current_user.customer_name}!"
          end
        end
      redirect_to product_maintenances_path
    else
      if admin && admin.authenticate(params[:session][:password])
        admin_access admin
        redirect_to admin_user
        if Time.now.strftime("%H").to_i <= 12
          flash[:success] = "Good morning #{admin_user.name}!"
        else
          if Time.now.strftime("%H").to_i >= 12 && Time.now.strftime("%H").to_i <= 18
            flash[:success] = "Good afternoon #{admin_user.name}!"
          else
            flash[:success] = "Good evening #{admin_user.name}!"
          end
        end
      else
      flash[:error] = "Incorrect login"
      redirect_to root_path
      end
    end
    end

  def destroy
    sign_out
    redirect_to root_path
    flash[:success] = "You have successfully signed out!"
  end
end