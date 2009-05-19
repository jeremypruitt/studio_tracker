class ProjectsController < ApplicationController
  def index
    @projects = Project.find :all

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @projects.to_xml }
      format.json { render :text => @projects.to_json }
      format.yaml { render :text => @projects.to_yaml }
    end
  end

  def create
  end

  def new
  end

  def show
    @project = Project.find params[:id]

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @project.to_xml }
      format.json { render :text => @project.to_json }
      format.yaml { render :text => @project.to_yaml }
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
