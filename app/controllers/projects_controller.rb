class ProjectsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit, :update]}, site_admin: :all
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.order(:id)
  end

  def show
  end

  def new
    @project = Project.new
    3.times { @project.technologies.build }
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url
  end

  private

    def project_params
      params.require(:project).permit(:title, :subtitle, :body, :thumb_image,
                                       technologies_attributes: [:name])
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
