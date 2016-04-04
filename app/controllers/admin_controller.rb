class AdminController < ApplicationController
  before_action :authenticate_admin!
  def home
    @products = Product.all
    @categories = Category.all
  end
end
