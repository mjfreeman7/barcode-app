class BarcodesController < ApplicationController

  def new
    @job = Job.find_by_id(params[:job_id])
    @barcode = @job.barcodes.build 
  end

  def create
    @job = Job.find_by_id(params[:barcode][:job_id])
    @barcode = @job.barcodes.build(barcode_params)
    if @barcode.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def show
  end

  def index
  end

  def edit
  end

  def destroy
    @barcode = Barcode.destroy(params[:id])
    redirect_to jobs_path
  end

  private
    def barcode_params
      params.require(:barcode).permit(:barcode_number)
    end
end
