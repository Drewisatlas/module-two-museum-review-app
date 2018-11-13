class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password])
    @user.save

    session[:username] = @user.username

    redirect_to user_path(@user)
  end

  def destroy
    session.delete(:username)

    redirect_to museums_path
  end

end
