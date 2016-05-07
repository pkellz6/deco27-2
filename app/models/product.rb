class Product < ActiveRecord::Base
  extend FriendlyId
  belongs_to :category
  has_many :product_images
  accepts_nested_attributes_for :product_images, allow_destroy: true

  friendly_id :name, use: :slugged
  validates_presence_of :name

  paginates_per 8

  def should_generate_new_friendly_id?
    slug.blank?
  end
end
