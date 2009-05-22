class TracksController < ApplicationController
  def index
    @tracks = Track.find :all
  end
  
  def show
    @track = Track.find(params[:id])
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(params[:track])
    if @track.save
      flash[:notice] = "Successfully created track."
      redirect_to @track
    else
      render :action => 'new'
    end
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(params[:track])
      flash[:notice] = "Successfully updated track."
      redirect_to @track
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    flash[:notice] = "Successfully destroyed track."
    redirect_to tracks_url
  end
end
