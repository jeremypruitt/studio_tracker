class SessionsController < ApplicationController
  def index
    @sessions = Session.find :all

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @sessions.to_xml }
      format.json { render :text => @sessions.to_json }
      format.yaml { render :text => @sessions.to_yaml }
    end
  end

  def create
    @session = Session.new(params[:session])

    if @session.save
      flash[:notice] = "Successfully created session."
      redirect_to sessions_path
    else
      render :action => 'new'
    end
  end

  def new
    @session = Session.new
    3.times { @session.tracks.build }
  end

  def show
    @session = Session.find params[:id]

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @session.to_xml }
      format.json { render :text => @session.to_json }
      format.yaml { render :text => @session.to_yaml }
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
