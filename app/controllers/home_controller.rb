class HomeController < ApplicationController
  def index
    @oferta = Oferta.last
  end

end
