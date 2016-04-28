class Photo < ActiveRecord::Base
  DEFAULT_URL = '/images/missing.png'
  VALIDATE_SIZE = { :in => 0..5.megabytes, :message => 'Photo size too large. Please limit to 5 mb.' }
  has_attached_file :image,
                    :styles => { medium: '300x300#', thumb: '100x100#' },
                    :default_url => DEFAULT_URL
  validates_attachment  :image,
                        :content_type => { :content_type => /\Aimage\/.*\Z/},
                        :size => VALIDATE_SIZE
  rails_admin do
    visible false
  end
end
