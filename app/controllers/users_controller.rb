class UsersController < ApplicationController

  def index
    @users = User.all
    @title = "Index of all users"
  end
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, :flash => { :success => "You're signed up!" }
    else
      flash.now[:error] = "Invalid email/password combination."
      render 'new'
    end
  end  
  
end
