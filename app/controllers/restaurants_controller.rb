class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
