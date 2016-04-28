class RemoveImageFormCategories < ActiveRecord::Migration
  def change
  	remove_column :categories, :image
  end
end
