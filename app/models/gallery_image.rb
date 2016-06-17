class GalleryImage < ActiveRecord::Base
  DEFAULT_URL = '/images/missing.png'
  VALIDATE_SIZE = { :in => 0..5.megabytes, :message => 'Photo size too large. Please limit to 5 mb.' }
  has_attached_file :image,
                    :styles => { large: '600x683#', medium: '550x620##', thumb: '101x115#' },
                    :default_url => DEFAULT_URL, :storage => :s3, :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
  validates_attachment  :image,
                        :content_type => { :content_type => /\Aimage\/.*\Z/},
                        :size => VALIDATE_SIZE
  belongs_to :gallery
  has_one :product

  def s3_credentials
    {:bucket => ENV['s3_bucket'], :access_key_id => ENV['aws_access_key_id'], :secret_access_key => ENV['aws_access_secret']}
  end

	rails_admin do
    parent Gallery
  end

end
