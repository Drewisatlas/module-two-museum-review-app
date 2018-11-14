class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :authorized
  helper_method :authorized_for_admin

  def current_user
    if session[:username]
      User.find_by(username: session[:username])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to museums_path unless logged_in?
  end

  def authorized_for_admin(user)
    self.authorized
    if current_user.admin == false
      redirect_to museums_path
    else
      true
    end
  end
end
