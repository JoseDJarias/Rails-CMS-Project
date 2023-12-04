class Admin::ProjectsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    
  end

  def new
    @project = Project.new
  end  

  def create
    @project = Project.new(project_params)

    if @project.save
    #  se guardo el proyecto
      flash[:notice] = 'A new project has been created!'
      redirect_to admin_projects_path
    else

      flash[:error] = 'Error can not create the new project!'
      render :new, status: 422
      
    end
  end

  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      flash[:notice] = 'The project has been edited!'
      redirect_to @project
    else
      flash[:error] = 'Error can not create the project!'
      render :edit, status: 422

    end  

  end

  private

  def project_params
    # params.require(:project).permit(:project_name, :project_description, :project_stack, :project_start_date, :project_end_date, :admin_id)
    new_params = {
      project_name: params[:project_name],
      project_description: params[:project_description],
      project_stack: params[:project_stack],
      project_task: params[:project_task],
      project_start_date: params[:project_start_date],
      project_end_date: params[:project_end_date],
      admin_id: params[:admin_id]
    }
    new_params
  end
end
