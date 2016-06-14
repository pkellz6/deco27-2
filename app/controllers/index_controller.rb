class IndexController < ApplicationController
  def index
    render "index"
    @products = Gallery.first.products
  end
end
