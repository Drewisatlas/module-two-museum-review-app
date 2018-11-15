class PagesController < ApplicationController
  def home
    @recent_reviews = Review.most_recent_reviews
    
    if Museum.search_by_city(params[:search_by_city]) != nil
      @museums = Museum.search_by_city(params[:search_by_city])
    else
      flash[:notice] = "There are no results for that city"
      redirect_to root_path
    end
  end
end
