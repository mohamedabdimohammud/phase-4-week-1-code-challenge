class RestaurantPizzasController < ApplicationController
    before_action :set_restaurant_pizza, only: [:show, :destroy]
  
    def create
      @restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  
      if @restaurant_pizza.save
        render json: @restaurant_pizza.pizza, status: :created
      else
        render json: { errors: @restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def show
      if @restaurant_pizza
        render json: @restaurant_pizza.pizza, status: :ok
      else
        render json: { error: 'RestaurantPizza not found' }, status: :not_found
      end
    end
  
    def destroy
      if @restaurant_pizza
        @restaurant_pizza.destroy
        head :no_content
      else
        render json: { error: 'RestaurantPizza not found' }, status: :not_found
      end
    end
  
    private
  
    def set_restaurant_pizza
      @restaurant_pizza = RestaurantPizza.find_by(id: params[:id])
    end
  
    def restaurant_pizza_params
      params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end
  end
  