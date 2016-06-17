class Gallery < ActiveRecord::Base
  has_many :product_images
  has_many :products, through: :product_images
  rails_admin do
    visible true
  end
end
