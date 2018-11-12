class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end
  
  def new
    return head(:forbidden) unless session.include?(:username)
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
    params.require(:review).permit(:title, :review, :rating, :museum_id)
  end
end
