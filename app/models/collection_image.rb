class CollectionImage < ActiveRecord::Base
  attr_accessible :collection_id, :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :image
  belongs_to :collection

  has_attached_file :image, :styles => { :thumb => "50x"},
  	:convert_options => {
  		:thumb => "-quality 75 -strip"
  	},
  	:url => "/assets/collections/:id/:style/:basename.:extension",
  	:path => ":rails_root/public/assets/collections/:id/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
end
