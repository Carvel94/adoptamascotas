class PagesController < ApplicationController
  def home
  	@tipo_servicios = TipoServicio.all
  end

  def index
  end
end
