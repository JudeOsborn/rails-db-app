class ShippingUnitsController < ApplicationController
  # GET /shipping_units
  # GET /shipping_units.xml
  def index
    @shipping_units = ShippingUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shipping_units }
    end
  end

  # GET /shipping_units/1
  # GET /shipping_units/1.xml
  def show
    @shipping_unit = ShippingUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shipping_unit }
    end
  end

  # GET /shipping_units/new
  # GET /shipping_units/new.xml
  def new
    @shipping_unit = ShippingUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shipping_unit }
    end
  end

  # GET /shipping_units/1/edit
  def edit
    @shipping_unit = ShippingUnit.find(params[:id])
  end

  # POST /shipping_units
  # POST /shipping_units.xml
  def create
    @shipping_unit = ShippingUnit.new(params[:shipping_unit])

    respond_to do |format|
      if @shipping_unit.save
        format.html { redirect_to(@shipping_unit, :notice => 'Shipping unit was successfully created.') }
        format.xml  { render :xml => @shipping_unit, :status => :created, :location => @shipping_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shipping_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_units/1
  # PUT /shipping_units/1.xml
  def update
    @shipping_unit = ShippingUnit.find(params[:id])

    respond_to do |format|
      if @shipping_unit.update_attributes(params[:shipping_unit])
        format.html { redirect_to(@shipping_unit, :notice => 'Shipping unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shipping_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_units/1
  # DELETE /shipping_units/1.xml
  def destroy
    @shipping_unit = ShippingUnit.find(params[:id])
    @shipping_unit.destroy

    respond_to do |format|
      format.html { redirect_to(shipping_units_url) }
      format.xml  { head :ok }
    end
  end
end
