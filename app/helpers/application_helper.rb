# -*- coding: utf-8 -*-
module ApplicationHelper
  
  def day_list
    today = Time.now.wday - 1
    days = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo']
    sorted_days = []
    (0..6).each do |i|
      sorted_days << days[today + i]
      today = (i * -1) -1 if today + i == 6
    end

    return sorted_days
  end

  def fecha_hoy
    today = Time.now.wday - 1
    days = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo']
    if params[:wday]
      dia = params[:wday]
      dia = "miércoles" if params[:wday] == "miercoles"
      dia = "sábado" if params[:wday] == "sabado"
      return dia
    else
      return days[today] + " " + Time.now.day.to_s + " de junio"
    end
  end

  def cool_oferta_url(oferta)
    ofertas_url + "/" + oferta.restaurant.name.parameterize + "/" + oferta.description.parameterize + "-" + oferta.id.to_s
  end
  
end
