# -*- coding: undecided -*-
class Address < ActiveRecord::Base
  belongs_to :oferta
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode        

  def full_street_address
    "México, Jalisco, Guadalajara, " + self.street
  end

end
