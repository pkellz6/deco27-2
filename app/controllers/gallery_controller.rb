class GalleryController < ApplicationController
  def index
  	@gallery = Gallery.first
  	@photos = @gallery.gallery_images params[:page]
  end
end
