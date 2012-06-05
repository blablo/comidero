class Restaurant < ActiveRecord::Base
has_many :addresses, :dependent => :destroy
accepts_nested_attributes_for :addresses
has_many :ofertas, :dependent => :destroy
accepts_nested_attributes_for :ofertas

has_attached_file :logo,
  :styles => { :medium => "300x300>", :thumb => "200x200>" },
  :storage => :s3,
  :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
  :path => "/:style/:id/:filename"

end
