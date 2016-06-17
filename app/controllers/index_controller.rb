class IndexController < ApplicationController

  def index
    @images = Gallery.first.gallery_images.sample(8)
    render "index"
  end

end
