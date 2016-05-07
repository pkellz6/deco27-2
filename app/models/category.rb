class Category < ActiveRecord::Base
	extend FriendlyId
  has_many :products, dependent: :destroy
  friendly_id :name, use: :slugged
  validates_presence_of :name

  DEFAULT_URL = '/images/missing-categories.jpg'
  VALIDATE_SIZE = { :in => 0..5.megabytes, :message => 'Photo size too large. Please limit to 5 mb.' }
  has_attached_file :picture,
                    :styles => { large: '876x239#', medium: '270x270#', thumb: '100x100#' },
                    :default_url => DEFAULT_URL
  validates_attachment  :picture,
                        :content_type => { :content_type => /\Aimage\/.*\Z/},
                        :size => VALIDATE_SIZE

	def should_generate_new_friendly_id?
    slug.blank?
  end
end
