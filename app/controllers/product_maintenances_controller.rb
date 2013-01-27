class ProductMaintenancesController < ApplicationController
  # GET /product_maintenances
  # GET /product_maintenances.json

  before_filter :restrict_customer_access, only: [:create, :new, :edit, :update, :destroy]

  def index
    @product_maintenances = ProductMaintenance.all.reverse
    @so_detail = SoDetail.new(params[:so_detail])
    @q = ProductMaintenance.search(params[:q])
    @product_maintenance = @q.result(distinct: true).paginate(page: params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_maintenances }
    end
  end

  # GET /product_maintenances/1
  # GET /product_maintenances/1.json
  def show
    @product_maintenance = ProductMaintenance.find(params[:id])
    @so_detail = SoDetail.new(params[:so_detail])
    if current_user.so_headers.last.nil?
      SoHeader.create(
          customer_maintenance_id: current_user.id,
          outlet_code: current_user.outlet_code,
          company_code: 0,
          outlet_name: current_user.outlet_name,
          customer_name: current_user.customer_name,
          delivery_group: current_user.delivery_group_code,
          order_date: Date.today,
          delivery_date: Date.tomorrow,
          production_date: Date.today
      )
    end

    if current_user.so_headers.last.order_date != Date.today
      SoHeader.create(
          customer_maintenance_id: current_user.id,
          outlet_code: current_user.outlet_code,
          company_code: 0,
          outlet_name: current_user.outlet_name,
          customer_name: current_user.customer_name,
          delivery_group: current_user.delivery_group_code,
          order_date: Date.today,
          delivery_date: Date.tomorrow,
          production_date: Date.today
      )
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_maintenance }
    end
  end

  # GET /product_maintenances/new
  # GET /product_maintenances/new.json
  def new
    @product_maintenance = ProductMaintenance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_maintenance }
    end
  end

  # GET /product_maintenances/1/edit
  def edit
    @product_maintenance = ProductMaintenance.find(params[:id])
  end

  # POST /product_maintenances
  # POST /product_maintenances.json
  def create
    @product_maintenance = ProductMaintenance.new(params[:product_maintenance])
    @so_detail = SoDetail.new(params[:so_detail])

    respond_to do |format|
      if @product_maintenance.save
        format.html { redirect_to product_maintenances_path, notice: 'Product maintenance was successfully created.' }
        format.json { render json: @product_maintenance, status: :created, location: @product_maintenance }
      else
        format.html { render action: "new" }
        format.json { render json: @product_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_maintenances/1
  # PUT /product_maintenances/1.json
  def update
    @product_maintenance = ProductMaintenance.find(params[:id])

    respond_to do |format|
      if @product_maintenance.update_attributes(params[:product_maintenance])
        format.html { redirect_to product_maintenances_path, notice: 'Product maintenance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_maintenances/1
  # DELETE /product_maintenances/1.json
  def destroy
    @product_maintenance = ProductMaintenance.find(params[:id])
    @product_maintenance.destroy

    respond_to do |format|
      format.html { redirect_to product_maintenances_url }
      format.json { head :no_content }
    end
  end
end
