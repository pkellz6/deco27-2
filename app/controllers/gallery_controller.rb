class GalleryController < ApplicationController
  def index
  	@gallery = Category.new(name: 'Gallery')
  	@products = Product.where(is_feature: true).page params[:page]
    render :template => "categories/show"
  end
end
