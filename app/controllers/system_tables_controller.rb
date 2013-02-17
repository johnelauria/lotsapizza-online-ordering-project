class SystemTablesController < ApplicationController
  # GET /system_tables
  # GET /system_tables.json

  before_filter :sign_in_first
  def index
    @system_tables = SystemTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @system_tables }
    end
  end

  # GET /system_tables/1
  # GET /system_tables/1.json
  def show
    @system_table = SystemTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @system_table }
    end
  end

  # GET /system_tables/new
  # GET /system_tables/new.json
  def new
    @system_table = SystemTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @system_table }
    end
  end

  # GET /system_tables/1/edit
  def edit
    @system_table = SystemTable.find(params[:id])
  end

  # POST /system_tables
  # POST /system_tables.json
  def create
    @system_table = SystemTable.new(params[:system_table])

    respond_to do |format|
      if @system_table.save
        format.html { redirect_to @system_table, notice: 'System table was successfully created.' }
        format.json { render json: @system_table, status: :created, location: @system_table }
      else
        format.html { render action: "new" }
        format.json { render json: @system_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /system_tables/1
  # PUT /system_tables/1.json
  def update
    @system_table = SystemTable.find(params[:id])

    respond_to do |format|
      if @system_table.update_attributes(params[:system_table])
        format.html { redirect_to @system_table, notice: 'System table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @system_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_tables/1
  # DELETE /system_tables/1.json
  def destroy
    @system_table = SystemTable.find(params[:id])
    @system_table.destroy

    respond_to do |format|
      format.html { redirect_to system_tables_url }
      format.json { head :no_content }
    end
  end
end
