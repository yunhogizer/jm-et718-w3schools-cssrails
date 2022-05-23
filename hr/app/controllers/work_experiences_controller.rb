class WorkExperiencesController < ApplicationController
  http_basic_authenticate_with name: "user", password: "password123", only: :destroy
  def create
    @resume = Resume.find(params[:resume_id])
    @work_experience = @resume.work_experiences.create(work_experience_params)
    redirect_to resume_path(@resume)
  end
 
  def destroy
    @resume = Resume.find(params[:resume_id])
    @work_experience = @resume.work_experiences.find(params[:id])
    @work_experience.destroy
    redirect_to resume_path(@resume)
  end
  
  private
    def work_experience_params
      params.require(:work_experience).permit(:experience, :startdate, :enddate, :description, :source)
    end
end
