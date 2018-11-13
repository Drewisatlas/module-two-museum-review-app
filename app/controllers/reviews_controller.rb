class ReviewsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @user = current_user.id
  end

  def create
    @review= Review.create(strong_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to review_path(@review)
  end

private
  def strong_params
    params.require(:review).permit(:title, :review, :rating, :museum_id, :user_type_id)
  end

  def require_login
    unless session.include?(:username)
      flash[:warning] = "You must be logged in to write a review"

      redirect_to login_path  # halts request cycle
    end
  end

end
