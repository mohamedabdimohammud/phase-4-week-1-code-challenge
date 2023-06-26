class PizzasController < ApplicationController
    before_action :set_pizza, only: [:show]
  
    def index
      pizzas = Pizza.all
      render json: pizzas
    end
  
    def show
      if @pizza
        render json: @pizza
      else
        render json: { error: 'Pizza not found' }, status: :not_found
      end
    end
  
    private
  
    def set_pizza
      @pizza = Pizza.find_by(id: params[:id])
    end
  end
  