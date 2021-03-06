class ProjectsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.by_position
  end

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update!(position: value[:position])
    end

    render nothing: true
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project created successfully."
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:notice] = "Project updated successfully."
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project deleted."
    redirect_to projects_url
  end

  private

    def project_params
      params.require(:project).permit(:title, :subtitle, :body, :thumb_image,
                                       :main_image, :link,
                                       technologies_attributes: [:id, :name, :_destroy])
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
