class AddGalleryIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :gallery_id, :integer
  end
end
