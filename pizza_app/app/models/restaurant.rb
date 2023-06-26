class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas
  
    validates :name, presence: true
    validates :address, presence: true
  
    def as_json(options = {})
      super(options.merge(include: :pizzas))
    end
  end
  