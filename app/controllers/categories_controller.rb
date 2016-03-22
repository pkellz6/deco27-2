class CategoriesController < ApplicationController
  before_action :authenticate_admin!, only: [ :show, :new, :create, :edit, :update, :destroy ]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    @products = Category.all.reject{ |category| category.try(:products).blank? }.sample.try(:products)
    render "categories"
  end


  # GET /categories/new
  def new
    @category = Category.new
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :image)
    end
end
