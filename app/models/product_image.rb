class ProductImage < Photo
	belongs_to :product
	belongs_to :gallery
	rails_admin do
    parent Product
  end

end
