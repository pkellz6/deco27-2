class AddIsFeatureToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :is_feature, :boolean, :default => false
  	add_column :products, :brand, :string
  end
end
