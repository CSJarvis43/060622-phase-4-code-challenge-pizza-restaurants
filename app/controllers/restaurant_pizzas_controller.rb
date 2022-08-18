class RestaurantPizzasController < ApplicationController

    def create
        render json: RestaurantPizza.create!(restaurant_pizzas_params).pizza, status: :created
    end

    private

    def restaurant_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
