class Gallery < ActiveRecord::Base
  has_many :products
  rails_admin do
    visible true
  end
end
