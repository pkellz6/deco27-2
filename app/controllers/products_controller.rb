class ProductsController < ApplicationController
  before_action :set_category, only: [:show]

  def show
    @product = @category.products.friendly.find(params[:id])
  end

  private
  def set_category
    @category = Category.friendly.find(params[:category_id])
  end
end
   