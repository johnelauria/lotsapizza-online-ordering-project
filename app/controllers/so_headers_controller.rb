class SoHeadersController < ApplicationController
  # GET /so_headers
  # GET /so_headers.json

  before_filter :sign_in_first
  before_filter :restrict_customer_access, only: [:index]

  def printable
    @so_header = SoHeader.find(params[:id])
  end

  def index
    @so_headers = SoHeader.paginate(page: params[:page], order: "created_at DESC")
    @q = SoHeader.search(params[:q])
    @so_header = @q.result.paginate(page: params[:page], order: "created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @so_headers }
    end
  end

  # GET /so_headers/1
  # GET /so_headers/1.json
  def show
    @so_header = SoHeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @so_header }
      format.pdf
    end
  end

  # GET /so_headers/new
  # GET /so_headers/new.json
  def new
    @so_header = SoHeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @so_header }
    end
  end

  # GET /so_headers/1/edit
  def edit
    @so_header = SoHeader.find(params[:id])
  end

  # POST /so_headers
  # POST /so_headers.json
  def create
    @so_header = SoHeader.new(params[:so_header])

    respond_to do |format|
      if @so_header.save
        format.html { redirect_to @so_header, notice: 'So header was successfully created.' }
        format.json { render json: @so_header, status: :created, location: @so_header }
      else
        format.html { render action: "new" }
        format.json { render json: @so_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /so_headers/1
  # PUT /so_headers/1.json
  def update
    @so_header = SoHeader.find(params[:id])

    respond_to do |format|
      if @so_header.update_attributes(params[:so_header])
        SoDetail.find_by_so_header_id(@so_header.id).update_attributes(sales_invoice_num: @so_header.sales_invoice_num)
        format.html { redirect_to @so_header, notice: 'So header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @so_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /so_headers/1
  # DELETE /so_headers/1.json
  def destroy
    @so_header = SoHeader.find(params[:id])
    @so_header.destroy

    respond_to do |format|
      format.html { redirect_to so_headers_url }
      format.json { head :no_content }
    end
  end
end
