class GalleryController < ApplicationController
  def index
  	@gallery = Category.new(name: 'Gallery')
  	@products = Product.featured.page params[:page]
    #render :template => "categories/show"
  end
end
