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
      # example code for reference
      # @event.location = @location
      @project.user = @user

      if @project.save
        redirect_to [@user, @project]
      else
        render :new
      end

    end

    def show
    end

    def project_params
      params.require(:project).permit(:title, :description, :amount,:deadline)
    end
  end
