class AdminController < ApplicationController
  before_action :authenticate_admin!
  def home
    # @portfolios = Portfolio.all
    # @categories = Category.all
  end
end
