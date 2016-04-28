class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy

  DEFAULT_URL = '/images/projects/covers/:style/missing.png'
  VALIDATE_SIZE = { :in => 0..5.megabytes, :message => 'Photo size too large. Please limit to 5 mb.' }
  has_attached_file :picture,
                    :styles => { medium: '300x300#', thumb: '100x100#' },
                    :default_url => DEFAULT_URL
  validates_attachment  :picture,
                        :content_type => { :content_type => /\Aimage\/.*\Z/},
                        :size => VALIDATE_SIZE
end
