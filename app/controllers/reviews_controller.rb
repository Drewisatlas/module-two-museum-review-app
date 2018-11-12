class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end
  
  def new
    return head(:forbidden) unless session.include?(:username)
      @review = Review.new
      
  end

  def create

  end
end
