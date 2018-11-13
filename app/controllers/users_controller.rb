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

<<<<<<< HEAD
=======
  private

  def strong_params
    params.require(:user).permit(:username, :first_name, :last_name, :age, :email)
  end

>>>>>>> 3982002858f67c36693d878595cb71d41b9096bd
end
