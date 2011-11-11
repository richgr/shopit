class UsersController < ApplicationController

  def index
#    @users = User.all
#    @title = "Index of all users"
  end
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.create
      render "new", :notice => 
                              { :success => "You've been signed up!"}
    else
      render "new", :notice => 
                              { :error => "Errors so not saved." }
    end
  end  
  
end
