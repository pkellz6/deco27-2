class AddPaperclipToGalleryImage < ActiveRecord::Migration
  def change
    add_attachment :gallery_images, :image
  end
end
