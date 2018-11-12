class ReviewsController < ApplicationController

  def new
    return head(:forbidden) unless session.include?(:username)
      @review = Review.new
      
  end

  def create

  end
end
