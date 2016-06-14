class GalleryController < ApplicationController
  def index
  	@gallery = Gallery.first
  	@products = @gallery.products params[:page]
  end
end
