class BusinessSizesController < ApplicationController
  # GET /business_sizes
  # GET /business_sizes.json
  def index
    @business_sizes = BusinessSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_sizes }
    end
  end

  # GET /business_sizes/1
  # GET /business_sizes/1.json
  def show
    @business_size = BusinessSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_size }
    end
  end

  # GET /business_sizes/new
  # GET /business_sizes/new.json
  def new
    @business_size = BusinessSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_size }
    end
  end

  # GET /business_sizes/1/edit
  def edit
    @business_size = BusinessSize.find(params[:id])
  end

  # POST /business_sizes
  # POST /business_sizes.json
  def create
    @business_size = BusinessSize.new(params[:business_size])

    respond_to do |format|
      if @business_size.save
        format.html { redirect_to @business_size, notice: 'Business size was successfully created.' }
        format.json { render json: @business_size, status: :created, location: @business_size }
      else
        format.html { render action: "new" }
        format.json { render json: @business_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_sizes/1
  # PUT /business_sizes/1.json
  def update
    @business_size = BusinessSize.find(params[:id])

    respond_to do |format|
      if @business_size.update_attributes(params[:business_size])
        format.html { redirect_to @business_size, notice: 'Business size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_sizes/1
  # DELETE /business_sizes/1.json
  def destroy
    @business_size = BusinessSize.find(params[:id])
    @business_size.destroy

    respond_to do |format|
      format.html { redirect_to business_sizes_url }
      format.json { head :no_content }
    end
  end
end
