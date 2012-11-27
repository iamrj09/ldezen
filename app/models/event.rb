class Event < ActiveRecord::Base
  attr_accessible :date

  validates :date, :presence => true
  has_many :event_images
  accepts_nested_attributes_for :event_images
  attr_accessible :event_images_attributes
end
