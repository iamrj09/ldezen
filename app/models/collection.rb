class Collection < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :collection_images

  attr_accessible :collection_images_attributes
  accepts_nested_attributes_for :collection_images

end