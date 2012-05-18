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
  
end
