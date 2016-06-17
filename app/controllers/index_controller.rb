class IndexController < ApplicationController
  Rails.application.routes.url_helpers

  def index
    render "index"
    @products = Gallery.first.products
  end
end
