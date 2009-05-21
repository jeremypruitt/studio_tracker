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
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        flash[:notice] = 'Project was successfully added.'
        format.html { redirect_to(@project) }
      else
        flash[:error] = 'Could not add project.'
        format.html { render :action => "new" }
      end
    end
  end

  def new
    @project = Project.new
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
