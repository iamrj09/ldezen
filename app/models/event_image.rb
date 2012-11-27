class EventImage < ActiveRecord::Base
  attr_accessible :event_id, :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :image

  belongs_to :event

  has_attached_file :image, :styles =>{:thumb => "50x"},
  							 :convert_options=>{:thumb =>"-quality 50 -strip"},
  							 :url => "/assets/events/:id/:styles/:basename.:extension",
  							 :path => ":rails_root/public/assets/events/:id/:styles/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
end
