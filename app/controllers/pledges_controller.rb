class PledgesController < ApplicationController
  #
  # before_action do
  #   @project = Project.find(params[:project_id])
  #   @user = User.find(params[:user_id])
  # end
  #

  def index
  end

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = @user
    @pledge.project = @project

    if @pledge.save
      redirect_to @project
      flash[:notice] = "Pledge succesfully created."
    else
      flash[:error] = "Sorry, pledge not succesful."
      render :new
      # redirect_to user_project_path

  end

  def show
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount)
  end

end
