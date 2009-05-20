class DevicesController < ApplicationController
  def index
    @devices = Device.find :all

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @devices.to_xml }
      format.json { render :text => @devices.to_json }
      format.yaml { render :text => @devices.to_yaml }
    end
  end

  def create
  end

  def new
  end

  def show
    @device = Device.find params[:id]

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @device.to_xml }
      format.json { render :text => @device.to_json }
      format.yaml { render :text => @device.to_yaml }
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
