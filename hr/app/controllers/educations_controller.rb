class EducationsController < ApplicationController
http_basic_authenticate_with name: "user", password: "password123", only: :destroy
  def create
    @resume = Resume.find(params[:resume_id])
    @education = @resume.educations.create(education_params)
    redirect_to resume_path(@resume)
  end
  
  def destroy
    @resume = Resume.find(params[:resume_id])
    @education = @resume.educations.find(params[:id])
    @education.destroy
    redirect_to resume_path(@resume)
  end
 
  private
    def education_params
      params.require(:education).permit(:school, :startdate, :enddate, :description)
    end
end
