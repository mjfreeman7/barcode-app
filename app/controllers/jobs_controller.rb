class JobsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @jobs = Job.all
    #@jobs = Job.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => "5", :page => params[:page])
  end
  def new
    @job = current_user.jobs.build 
  end

  def show
    @job = Job.find(params[:id])
    @barcodes = @job.barcodes
    @assigned_user = User.find_by_id(@job.assign_user)
    @created_by = User.find_by_id(@job.user_id)
  end

  def edit
    @job = Job.find(params[:id])  
  end

  def update
    @job = Job.find(params[:id])  
    if @job.update_attributes(job_params)
      flash[:success] = "Job saved!"
      redirect_to jobs_path
    else
      redirect_to jobs_path
    end
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Job created!"
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  def destroy
    @job = Job.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to jobs_path }
      format.js
    end
  end

  private

    def job_params
      params.require(:job).permit(:details,:barcode, :assign_user, :importance, :comments, :status)
    end
    def status_params
      params.require(:job).permit(:status)
    end
  def sort_column
    Job.column_names.include?(params[:sort]) ? params[:sort] : "details"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end