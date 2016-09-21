class ProjectsController < ApplicationController
    before_action do
      @user = User.find(params[:user_id])
    end

    def index
      @projects = Project.all
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
# example code for refernce
      # @event.location = @location
      @project.user = @user

      if @project.save
    # flahes need to  ne added in the layout too
        redirect_to [@user, @project]
        # notice: "Account succesfully created"
      else
        # notice: "Account not created"
        render :new
      end

    end

    def show
    end

    def project_params
      params.require(:project).permit(:title, :description, :amount,:deadline)
    end
  end
