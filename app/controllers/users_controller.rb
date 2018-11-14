class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_params)
    if @user.valid?
      @user.save

      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def review_writer
    if self.username[-1] == "s"
      "#{self.username}' Reviews"
    else
      "#{self.username}'s Reviews"
    end
  end

  private

  def strong_params
    params.require(:user).permit(:username, :first_name, :last_name, :age, :email, :password, :password_confirmation)
  end

end
