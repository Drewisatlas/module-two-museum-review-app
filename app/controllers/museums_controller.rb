class MuseumsController < ApplicationController

  def index
  if Museum.search_by_city(params[:search_by_city]) != nil
      @museums = Museum.search_by_city(params[:search_by_city])
    else
      flash[:alert] = "There are no results for that city"
      @museums = Museum.all

      redirect_to museums_path
    end
  end

  def show
    @museum = Museum.find(params[:id])
  end

  def all_reviews
    @museum = Museum.find(params[:id])
  end

  private

  def strong_params
    params.require(:museum).permit(:search_by_city)
  end

end
