class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = find_recipe
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def edit
        @recipe = find_recipe
    end

    def update
        @recipe = find_recipe
        @recipe = Recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def destroy
        @recipe = find_recipe
        @recipe.destroy
        
        redirect_to recipes_path
    end

    private

    def find_recipe
        Recipe.find(params[:id]) 
    end

    def recipe_params
        params.require(:recipe).permit(:name, :allergy)
    end
end
