# -*- coding: utf-8 -*-
module OfertasHelper

  def oferta_full_description(oferta, hoy=nil)
    wdays = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo']

    if hoy and oferta.days =~ /#{Time.now.wday}/
      "Hoy " + wdays[Time.now.wday-1] + ". " + oferta.description + " en " + oferta.restaurant.name.titleize + "."
    else
      oferta.description + " en " + oferta.restaurant.name.titleize + "."
    end
  end
  
end
