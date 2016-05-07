class GalleryController < ApplicationController
  def index
  	@gallery = Category.new(name: 'Gallery')
    render :template => "categories/show"
  end
end
