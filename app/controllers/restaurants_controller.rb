class RestaurantsController < ApplicationController

    def index
        render json: Restaurant.all 
    end

    def show
        render json: find_restaurant, serializer: RestaurantWithPizzaSerializer
    end

    def destroy
        restaurant = find_restaurant.destroy
        head :no_content
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end
end
