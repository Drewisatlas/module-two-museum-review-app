class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:username]
    user = User.find_by(username: params[:username])

    redirect_to user_path(user)
  end

  # private
  #
  # def strong_params
  #   params.permit(:username)
  # end

end
