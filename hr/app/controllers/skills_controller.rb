class SkillsController < ApplicationController
  http_basic_authenticate_with name: "user", password: "password123", only: :destroy
  def create
    @resume = Resume.find(params[:resume_id])
    @skill = @resume.skills.create(skill_params)
    redirect_to resume_path(@resume)
  end

  def destroy
    @resume = Resume.find(params[:resume_id])
    @skill = @resume.skills.find(params[:id])
    @skill.destroy
    redirect_to resume_path(@resume)
  end
 
  private
    def skill_params
      params.require(:skill).permit(:title, :level)
    end
end
