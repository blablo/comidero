class Oferta < ActiveRecord::Base
has_many :addresses
accepts_nested_attributes_for :addresses

has_attached_file :picture, 
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :storage => :s3,
  :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
  :path => "/:style/:id/:filename"

validates_attachment_presence :picture
validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] 
#  :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }

end