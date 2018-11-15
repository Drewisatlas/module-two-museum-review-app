class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user != nil
      @user.authenticate(params[:password])
      @user.save

      session[:username] = @user.username
      session[:user] = @user.id

      redirect_to user_path(@user)
    else
      flash[:notice] = "This username/password combination cannot be found"
    end

  end

  def destroy
    session.delete(:username)

    redirect_to museums_path
  end

end
