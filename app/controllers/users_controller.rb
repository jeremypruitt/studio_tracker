class UsersController < ApplicationController
  def index
    @users = User.find :all

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @users.to_xml }
      format.json { render :text => @users.to_json }
      format.yaml { render :text => @users.to_yaml }
    end
  end

  def create
  end

  def new
  end

  def show
    @user = User.find params[:id]

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @user.to_xml }
      format.json { render :text => @user.to_json }
      format.yaml { render :text => @user.to_yaml }
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
