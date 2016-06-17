class RemoveTypoFieldAndAddNewGalleryIdToProduct < ActiveRecord::Migration
  def change
    remove_column :products, :galary_image_id
    add_column :products, :gallery_image_id, :integer
  end
end
