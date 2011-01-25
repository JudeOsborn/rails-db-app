class PrintJobCommentsController < ApplicationController
  # GET /print_job_comments
  # GET /print_job_comments.xml
  def index
    @print_job_comments = PrintJobComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @print_job_comments }
    end
  end

  # GET /print_job_comments/1
  # GET /print_job_comments/1.xml
  def show
    @print_job_comment = PrintJobComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @print_job_comment }
    end
  end

  # GET /print_job_comments/new
  # GET /print_job_comments/new.xml
  def new
    @print_job_comment = PrintJobComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @print_job_comment }
    end
  end

  # GET /print_job_comments/1/edit
  def edit
    @print_job_comment = PrintJobComment.find(params[:id])
  end

  # POST /print_job_comments
  # POST /print_job_comments.xml
  def create
    @print_job_comment = PrintJobComment.new(params[:print_job_comment])

    respond_to do |format|
      if @print_job_comment.save
        format.html { redirect_to(@print_job_comment, :notice => 'Print job comment was successfully created.') }
        format.xml  { render :xml => @print_job_comment, :status => :created, :location => @print_job_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @print_job_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /print_job_comments/1
  # PUT /print_job_comments/1.xml
  def update
    @print_job_comment = PrintJobComment.find(params[:id])

    respond_to do |format|
      if @print_job_comment.update_attributes(params[:print_job_comment])
        format.html { redirect_to(@print_job_comment, :notice => 'Print job comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @print_job_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /print_job_comments/1
  # DELETE /print_job_comments/1.xml
  def destroy
    @print_job_comment = PrintJobComment.find(params[:id])
    @print_job_comment.destroy

    respond_to do |format|
      format.html { redirect_to(print_job_comments_url) }
      format.xml  { head :ok }
    end
  end
end
