# -*- coding: utf-8 -*-
class Oferta < ActiveRecord::Base
belongs_to :restaurant
has_many :main_ofertas

has_attached_file :picture, 
  :styles => { :medium => "400x350#", :thumb => "170x170#" },
  :storage => :s3,
  :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
  :path => "/:style/:id/:filename"

validates_attachment_presence :picture
validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] 
#  :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }

  scope :by_wday, lambda {|wday| where("ofertas.days like '%?%'", wday).order("created_at DESC") unless wday.nil?}

  def valid_days
    wdays = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo']
    oferta_wdays = []
    (1..7).each do |i|
      if self.days =~ /#{i}/
        oferta_wdays << wdays[i]
      end
    end

    return oferta_wdays
  end

end
