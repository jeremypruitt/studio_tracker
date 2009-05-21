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
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'Registration Successfull.'
        format.html { redirect_to root_url }
      else
        flash[:error] = 'Registration failed.'
        format.html { render :action => "new" }
      end
    end
  end

  def new
    @user = User.new
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
