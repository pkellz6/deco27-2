class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.attachment :image
    	t.belongs_to :product, index:true

      t.timestamps
    end
  end
end
