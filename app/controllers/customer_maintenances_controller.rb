class CustomerMaintenancesController < ApplicationController
  # GET /customer_maintenances
  # GET /customer_maintenances.json
  def index
    @customer_maintenances = CustomerMaintenance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_maintenances }
    end
  end

  # GET /customer_maintenances/1
  # GET /customer_maintenances/1.json
  def show
    @customer_maintenance = CustomerMaintenance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_maintenance }
    end
  end

  # GET /customer_maintenances/new
  # GET /customer_maintenances/new.json
  def new
    @customer_maintenance = CustomerMaintenance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_maintenance }
    end
  end

  # GET /customer_maintenances/1/edit
  def edit
    @customer_maintenance = CustomerMaintenance.find(params[:id])
  end

  # POST /customer_maintenances
  # POST /customer_maintenances.json
  def create
    @customer_maintenance = CustomerMaintenance.new(params[:customer_maintenance])

    respond_to do |format|
      if @customer_maintenance.save
        format.html { redirect_to @customer_maintenance, notice: 'Customer maintenance was successfully created.' }
        format.json { render json: @customer_maintenance, status: :created, location: @customer_maintenance }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_maintenances/1
  # PUT /customer_maintenances/1.json
  def update
    @customer_maintenance = CustomerMaintenance.find(params[:id])

    respond_to do |format|
      if @customer_maintenance.update_attributes(params[:customer_maintenance])
        format.html { redirect_to @customer_maintenance, notice: 'Customer maintenance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_maintenances/1
  # DELETE /customer_maintenances/1.json
  def destroy
    @customer_maintenance = CustomerMaintenance.find(params[:id])
    @customer_maintenance.destroy

    respond_to do |format|
      format.html { redirect_to customer_maintenances_url }
      format.json { head :no_content }
    end
  end
end
