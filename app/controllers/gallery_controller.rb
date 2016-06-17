class GalleryController < ApplicationController
  def index
  	@gallery = Gallery.first
  	@photos = @gallery.product_images params[:page]
  end
end
