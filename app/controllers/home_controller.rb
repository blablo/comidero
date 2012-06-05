class HomeController < ApplicationController
  def index
    today = Time.now.wday
    @ofertas = Oferta.by_wday(today)
    @oferta = @ofertas.first

  end

end
