class MobilePagesController < ApplicationController
	layout 'mobile'

	def new
		@job = current_user.jobs.build 
	end
	def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Job created!"
      redirect_to finish_job
    else
       redirect_to finish_job
    end
  end
end
