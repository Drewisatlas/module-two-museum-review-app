class MuseumsController < ApplicationController

  def index
    @museums = Museum.search_by_city(params[:search_by_city])
  end

  def show
    @museum = Museum.find(params[:id])
  end

  private

  def strong_params
    params.require(:museum).permit(:search_by_city)
  end

end
