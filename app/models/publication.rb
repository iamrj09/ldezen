class Publication < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :publication_images

  accepts_nested_attributes_for :publication_images
  attr_accessible :publication_images_attributes
  
end
