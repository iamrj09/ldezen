class PublicationImage < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :publication_id, :name, :image
  belongs_to :publication

  has_attached_file :image, :styles => {:thumb => "50x"},
  :url => "/assets/publications/:id/:style/:basename.:extension",
  :path =>":rails_root/public/assets/publications/:id/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than =>10.megabytes

end
