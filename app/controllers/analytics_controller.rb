class AnalyticsController < ApplicationController

  def index
    @user_types = UserType.all
    @all_reviews = Review.all
    @month_num = [1,2,3,4,5,6,7,8,9,10,11,12]
    @month_name = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept","Oct", "Nov", "Dec"]
  end


end