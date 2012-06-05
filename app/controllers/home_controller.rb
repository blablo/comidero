class HomeController < ApplicationController
  def index

    wday = 0
    case params[:wday]
      when 'lunes'; wday = 1;
      when 'martes'; wday = 2;
      when 'miercoles'; wday = 3;
      when 'jueves'; wday = 4;
      when 'viernes'; wday = 5;
      when 'sabado'; wday = 6;
      when 'domingo'; wday = 7;
      else
      wday = Time.now.wday
    end

    @ofertas = Oferta.by_wday(wday)
    @oferta = @ofertas.last

  end

end
