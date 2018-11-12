class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:username]
    user = User.find_by(username: params[:username])

    redirect_to user_path(user)
  end

  def destroy
    session.delete(:username)

    redirect_to museums_path
  end

end
