class ProjectsController < ApplicationController

    def index
      @projects = Project.all
    end

    def new
      @project = Project.new
    end

    def create
      @project = project.new(project_params)

      if @project.save
    # flahes need to  ne added in the layout too
        redirect_to  user_project_path
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
