class PrintJobStatusDatesController < ApplicationController
  # GET /print_job_status_dates
  # GET /print_job_status_dates.xml
  def index
    @print_job_status_dates = PrintJobStatusDate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @print_job_status_dates }
    end
  end

  # GET /print_job_status_dates/1
  # GET /print_job_status_dates/1.xml
  def show
    @print_job_status_date = PrintJobStatusDate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @print_job_status_date }
    end
  end

  # GET /print_job_status_dates/new
  # GET /print_job_status_dates/new.xml
  def new
    @print_job_status_date = PrintJobStatusDate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @print_job_status_date }
    end
  end

  # GET /print_job_status_dates/1/edit
  def edit
    @print_job_status_date = PrintJobStatusDate.find(params[:id])
  end

  # POST /print_job_status_dates
  # POST /print_job_status_dates.xml
  def create
    @print_job_status_date = PrintJobStatusDate.new(params[:print_job_status_date])

    respond_to do |format|
      if @print_job_status_date.save
        format.html { redirect_to(@print_job_status_date, :notice => 'Print job status date was successfully created.') }
        format.xml  { render :xml => @print_job_status_date, :status => :created, :location => @print_job_status_date }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @print_job_status_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /print_job_status_dates/1
  # PUT /print_job_status_dates/1.xml
  def update
    @print_job_status_date = PrintJobStatusDate.find(params[:id])

    respond_to do |format|
      if @print_job_status_date.update_attributes(params[:print_job_status_date])
        format.html { redirect_to(@print_job_status_date, :notice => 'Print job status date was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @print_job_status_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /print_job_status_dates/1
  # DELETE /print_job_status_dates/1.xml
  def destroy
    @print_job_status_date = PrintJobStatusDate.find(params[:id])
    @print_job_status_date.destroy

    respond_to do |format|
      format.html { redirect_to(print_job_status_dates_url) }
      format.xml  { head :ok }
    end
  end
end
