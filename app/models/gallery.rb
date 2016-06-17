class Gallery < ActiveRecord::Base
  has_many  :gallery_images
  
  rails_admin do
    list do
      field :name
    end
  end
end
