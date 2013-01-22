class ProjectsController < ApplicationController
  load_and_authorize_resource
  layout "single_page", :except => [:index]

  # GET /projects
  def index
    @projects = Project.all
    render :layout => 'layouts/multi_page'
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /projects/1
  def update
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy

    redirect_to projects_url
  end
end
