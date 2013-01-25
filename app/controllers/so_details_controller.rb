class SoDetailsController < ApplicationController
  # GET /so_details
  # GET /so_details.json
  def index
    @so_details = SoDetail.all
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

    respond_to do |format|
      if @so_detail.save
        format.html { redirect_to @so_detail, notice: 'So detail was successfully created.' }
        format.json { render json: @so_detail, status: :created, location: @so_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @so_detail.errors, status: :unprocessable_entity }
      end
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
    @so_detail.destroy

    respond_to do |format|
      format.html { redirect_to so_details_url }
      format.json { head :no_content }
    end
  end
end
