class PrintJobStatusesController < ApplicationController
  # GET /print_job_statuses
  # GET /print_job_statuses.xml
  def index
    @print_job_statuses = PrintJobStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @print_job_statuses }
    end
  end

  # GET /print_job_statuses/1
  # GET /print_job_statuses/1.xml
  def show
    @print_job_status = PrintJobStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @print_job_status }
    end
  end

  # GET /print_job_statuses/new
  # GET /print_job_statuses/new.xml
  def new
    @print_job_status = PrintJobStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @print_job_status }
    end
  end

  # GET /print_job_statuses/1/edit
  def edit
    @print_job_status = PrintJobStatus.find(params[:id])
  end

  # POST /print_job_statuses
  # POST /print_job_statuses.xml
  def create
    @print_job_status = PrintJobStatus.new(params[:print_job_status])

    respond_to do |format|
      if @print_job_status.save
        format.html { redirect_to(@print_job_status, :notice => 'Print job status was successfully created.') }
        format.xml  { render :xml => @print_job_status, :status => :created, :location => @print_job_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @print_job_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /print_job_statuses/1
  # PUT /print_job_statuses/1.xml
  def update
    @print_job_status = PrintJobStatus.find(params[:id])

    respond_to do |format|
      if @print_job_status.update_attributes(params[:print_job_status])
        format.html { redirect_to(@print_job_status, :notice => 'Print job status was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @print_job_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /print_job_statuses/1
  # DELETE /print_job_statuses/1.xml
  def destroy
    @print_job_status = PrintJobStatus.find(params[:id])
    @print_job_status.destroy

    respond_to do |format|
      format.html { redirect_to(print_job_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
