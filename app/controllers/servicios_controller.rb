class ServiciosController < ApplicationController
  include CodigosGenerales
  before_action :cargarOpcionesDelMenuServicios
  
  def index
  end

  def new
    @servicio = Servicio.new
  end

  def create
  end

  def update
  end

  def show
  end
end
