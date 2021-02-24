class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
  
  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
   @recipe = Post.new(recipe_params)

   respond_to do |format|
    if @post.save
      format.html { redirect_to @recipe }
    else
      format.html { render :new }
    end
   end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :image, :method, :ingredients, :flavour)
  end

end