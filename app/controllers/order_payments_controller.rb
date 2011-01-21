class OrderPaymentsController < ApplicationController
  # GET /order_payments
  # GET /order_payments.xml
  def index
    @order_payments = OrderPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_payments }
    end
  end

  # GET /order_payments/1
  # GET /order_payments/1.xml
  def show
    @order_payment = OrderPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_payment }
    end
  end

  # GET /order_payments/new
  # GET /order_payments/new.xml
  def new
    @order_payment = OrderPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order_payment }
    end
  end

  # GET /order_payments/1/edit
  def edit
    @order_payment = OrderPayment.find(params[:id])
  end

  # POST /order_payments
  # POST /order_payments.xml
  def create
    @order_payment = OrderPayment.new(params[:order_payment])

    respond_to do |format|
      if @order_payment.save
        format.html { redirect_to(@order_payment, :notice => 'Order payment was successfully created.') }
        format.xml  { render :xml => @order_payment, :status => :created, :location => @order_payment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_payments/1
  # PUT /order_payments/1.xml
  def update
    @order_payment = OrderPayment.find(params[:id])

    respond_to do |format|
      if @order_payment.update_attributes(params[:order_payment])
        format.html { redirect_to(@order_payment, :notice => 'Order payment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_payments/1
  # DELETE /order_payments/1.xml
  def destroy
    @order_payment = OrderPayment.find(params[:id])
    @order_payment.destroy

    respond_to do |format|
      format.html { redirect_to(order_payments_url) }
      format.xml  { head :ok }
    end
  end
end
