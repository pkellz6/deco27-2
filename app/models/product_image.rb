class ProductImage < Photo
	belongs_to :product
	rails_admin do
    parent Product
  end
end