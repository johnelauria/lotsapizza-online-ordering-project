class SoDetailsController < ApplicationController
  # GET /so_details
  # GET /so_details.json

  before_filter :restrict_customer_access, only: [:index]
<<<<<<< HEAD

=======
>>>>>>> d96fef68555b9d53b0086d928cdf258cee8d5b95
  def index
    @so_details = SoDetail.paginate(page: params[:page])
    @q = SoDetail.search(params[:q])
    @so_detail = @q.result(distinct: true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @so_details }
    end
  end

  # GET /so_details/1
  # GET /so_details/1.json
  def show
    @so_detail = SoDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @so_detail }
    end
  end

  # GET /so_details/new
  # GET /so_details/new.json
  def new
    @so_detail = SoDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @so_detail }
    end
  end

  # GET /so_details/1/edit
  def edit
    @so_detail = SoDetail.find(params[:id])
  end

  # POST /so_details
  # POST /so_details.json
  def create
    @so_detail = SoDetail.new(params[:so_detail])

<<<<<<< HEAD
    if ProductMaintenance.find_by_product_code(@so_detail.product_code).on_hand >= @so_detail.quantity
      respond_to do |format|
        if @so_detail.save
          ProductMaintenance.find_by_product_code(@so_detail.product_code).update_attributes(on_hand: (ProductMaintenance.find_by_product_code(@so_detail.product_code).on_hand - @so_detail.quantity))
          format.html { redirect_to product_maintenances_path, notice: 'Product was successfully added to your orders list' }
          format.json { render json: @so_detail, status: :created, location: @so_detail }
        else
          format.html { render action: "new" }
          format.json { render json: @so_detail.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "Sorry. We currently have insufficient supply of the product you ordered. We'll try to stash up our supply ASAP to resolve your concerns."
      redirect_to product_maintenances_path
=======
    respond_to do |format|
      if @so_detail.save
        format.html { redirect_to product_maintenances_path, notice: 'So detail was successfully created.' }
        format.json { render json: @so_detail, status: :created, location: @so_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @so_detail.errors, status: :unprocessable_entity }
      end
>>>>>>> d96fef68555b9d53b0086d928cdf258cee8d5b95
    end
  end

  # PUT /so_details/1
  # PUT /so_details/1.json
  def update
    @so_detail = SoDetail.find(params[:id])

    respond_to do |format|
      if @so_detail.update_attributes(params[:so_detail])
        format.html { redirect_to @so_detail, notice: 'So detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @so_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /so_details/1
  # DELETE /so_details/1.json
  def destroy
    @so_detail = SoDetail.find(params[:id])
<<<<<<< HEAD
    ProductMaintenance.find_by_product_code(@so_detail.product_code).update_attributes(on_hand: (ProductMaintenance.find_by_product_code(@so_detail.product_code).on_hand + @so_detail.quantity))
=======
>>>>>>> d96fef68555b9d53b0086d928cdf258cee8d5b95
    @so_detail.destroy

    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :no_content }
    end
  end
end
