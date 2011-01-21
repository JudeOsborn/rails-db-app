class ItemsPrintJobsController < ApplicationController
  # GET /items_print_jobs
  # GET /items_print_jobs.xml
  def index
    @items_print_jobs = ItemsPrintJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items_print_jobs }
    end
  end

  # GET /items_print_jobs/1
  # GET /items_print_jobs/1.xml
  def show
    @items_print_job = ItemsPrintJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @items_print_job }
    end
  end

  # GET /items_print_jobs/new
  # GET /items_print_jobs/new.xml
  def new
    @items_print_job = ItemsPrintJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @items_print_job }
    end
  end

  # GET /items_print_jobs/1/edit
  def edit
    @items_print_job = ItemsPrintJob.find(params[:id])
  end

  # POST /items_print_jobs
  # POST /items_print_jobs.xml
  def create
    @items_print_job = ItemsPrintJob.new(params[:items_print_job])

    respond_to do |format|
      if @items_print_job.save
        format.html { redirect_to(@items_print_job, :notice => 'Items print job was successfully created.') }
        format.xml  { render :xml => @items_print_job, :status => :created, :location => @items_print_job }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @items_print_job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items_print_jobs/1
  # PUT /items_print_jobs/1.xml
  def update
    @items_print_job = ItemsPrintJob.find(params[:id])

    respond_to do |format|
      if @items_print_job.update_attributes(params[:items_print_job])
        format.html { redirect_to(@items_print_job, :notice => 'Items print job was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @items_print_job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items_print_jobs/1
  # DELETE /items_print_jobs/1.xml
  def destroy
    @items_print_job = ItemsPrintJob.find(params[:id])
    @items_print_job.destroy

    respond_to do |format|
      format.html { redirect_to(items_print_jobs_url) }
      format.xml  { head :ok }
    end
  end
end
