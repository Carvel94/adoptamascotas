class PagesController < ApplicationController
  
  include CodigosGenerales
  before_action :cargarOpcionesDelMenuServicios

  def home
  end

  def index
  end
end
