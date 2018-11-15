class AnalyticsController < ApplicationController

  def index
    @user_types = UserType.all
    @all_reviews = Review.all
    @month_num = [1,2,3,4,5,6,7,8,9,10,11,12]
    @month_name = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept","Oct", "Nov", "Dec"]
  end

  def show
    @museum = Museum.find(params[:id])
    @reviews = @museum.reviews
    @user_types = UserType.all
    @month_num = [1,2,3,4,5,6,7,8,9,10,11,12]
    @month_name = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept","Oct", "Nov", "Dec"]
  end

  def search
    @museum = Museum.find(params[:id])
    @keyword = params[:query]
    @results = @museum.keyword_locator(@keyword)
  end


end
