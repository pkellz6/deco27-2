class AddGalaryImageIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :galary_image_id
  end
end
