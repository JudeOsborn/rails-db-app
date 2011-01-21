class ShippingTypesController < ApplicationController
  # GET /shipping_types
  # GET /shipping_types.xml
  def index
    @shipping_types = ShippingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shipping_types }
    end
  end

  # GET /shipping_types/1
  # GET /shipping_types/1.xml
  def show
    @shipping_type = ShippingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shipping_type }
    end
  end

  # GET /shipping_types/new
  # GET /shipping_types/new.xml
  def new
    @shipping_type = ShippingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shipping_type }
    end
  end

  # GET /shipping_types/1/edit
  def edit
    @shipping_type = ShippingType.find(params[:id])
  end

  # POST /shipping_types
  # POST /shipping_types.xml
  def create
    @shipping_type = ShippingType.new(params[:shipping_type])

    respond_to do |format|
      if @shipping_type.save
        format.html { redirect_to(@shipping_type, :notice => 'Shipping type was successfully created.') }
        format.xml  { render :xml => @shipping_type, :status => :created, :location => @shipping_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shipping_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_types/1
  # PUT /shipping_types/1.xml
  def update
    @shipping_type = ShippingType.find(params[:id])

    respond_to do |format|
      if @shipping_type.update_attributes(params[:shipping_type])
        format.html { redirect_to(@shipping_type, :notice => 'Shipping type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shipping_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_types/1
  # DELETE /shipping_types/1.xml
  def destroy
    @shipping_type = ShippingType.find(params[:id])
    @shipping_type.destroy

    respond_to do |format|
      format.html { redirect_to(shipping_types_url) }
      format.xml  { head :ok }
    end
  end
end
