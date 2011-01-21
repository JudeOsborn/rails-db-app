class ItemsOrderedsController < ApplicationController
  # GET /items_ordereds
  # GET /items_ordereds.xml
  def index
    @items_ordereds = ItemsOrdered.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items_ordereds }
    end
  end

  # GET /items_ordereds/1
  # GET /items_ordereds/1.xml
  def show
    @items_ordered = ItemsOrdered.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @items_ordered }
    end
  end

  # GET /items_ordereds/new
  # GET /items_ordereds/new.xml
  def new
    @items_ordered = ItemsOrdered.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @items_ordered }
    end
  end

  # GET /items_ordereds/1/edit
  def edit
    @items_ordered = ItemsOrdered.find(params[:id])
  end

  # POST /items_ordereds
  # POST /items_ordereds.xml
  def create
    @items_ordered = ItemsOrdered.new(params[:items_ordered])

    respond_to do |format|
      if @items_ordered.save
        format.html { redirect_to(@items_ordered, :notice => 'Items ordered was successfully created.') }
        format.xml  { render :xml => @items_ordered, :status => :created, :location => @items_ordered }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @items_ordered.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items_ordereds/1
  # PUT /items_ordereds/1.xml
  def update
    @items_ordered = ItemsOrdered.find(params[:id])

    respond_to do |format|
      if @items_ordered.update_attributes(params[:items_ordered])
        format.html { redirect_to(@items_ordered, :notice => 'Items ordered was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @items_ordered.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items_ordereds/1
  # DELETE /items_ordereds/1.xml
  def destroy
    @items_ordered = ItemsOrdered.find(params[:id])
    @items_ordered.destroy

    respond_to do |format|
      format.html { redirect_to(items_ordereds_url) }
      format.xml  { head :ok }
    end
  end
end
