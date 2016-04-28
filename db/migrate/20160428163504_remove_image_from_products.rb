class RemoveImageFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :image_1
  	remove_column :products, :image_2
  end
end
