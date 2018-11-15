class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:username] = @user.username
      session[:user] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "Username and password do not match"
      render :new
    end
  end

  def destroy
    session.delete(:username)
    redirect_to museums_path
  end

end
