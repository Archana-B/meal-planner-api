class RecipesController < ApplicationController
    def index
        begin
            @recipes = Recipe.fetch(params[:meal_type])
            render json: @recipes, :except => [:created_at, :updated_at]
        rescue StandardError => error_variable
            render json: { error: error_variable.message}, status: 500
        end
    end
end
