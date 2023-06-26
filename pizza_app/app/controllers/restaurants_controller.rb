class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :destroy]
  
    def index
      restaurants = Restaurant.all
      render json: restaurants, each_serializer: RestaurantSerializer
    end
  
    def show
      if @restaurant
        render json: @restaurant, serializer: RestaurantSerializer, include: [:pizzas]
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    def destroy
      if @restaurant
        @restaurant.destroy
        render json: {}, status: :no_content
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    private
  
    def set_restaurant
      @restaurant = Restaurant.find_by(id: params[:id])
    end
  end
  