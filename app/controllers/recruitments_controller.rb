class RecruitmentsController < ApplicationController

  before_action :authenticate_admin!

  def new
    @recruitment = Recruitment.new
    @recruitments = Recruitment.all
  end

  def create
    recruitment = Recruitment.new(recruitment_params)
    recruitment.save
    redirect_to new_recruitment_path
  end

  def destroy
    recruitment = Recruitment.find(params[:id])
    recruitment.destroy
    redirect_to new_recruitment_path
  end

  private
    def  recruitment_params
    params.require(:recruitment).permit(:genre, :body, :time, :salary, :etc, :welcome)
  end

end
