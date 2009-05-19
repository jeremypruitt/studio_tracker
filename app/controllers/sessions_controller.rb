class SessionsController < ApplicationController
  def index
    @sessions = Sessions.find :all

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @sessions.to_xml }
      format.json { render :text => @sessions.to_json }
      format.yaml { render :text => @sessions.to_yaml }
    end
  end

  def create
  end

  def new
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
