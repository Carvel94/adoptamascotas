class PagesController < ApplicationController
  
  include CodigosGenerales
  before_action :cargarOpcionesDelMenuServicios

  def home
  end

  def index
  end

  def colocar_layout
  	puts usuario_signed_in?
  	puts current_usuario

  	if usuario_signed_in?
  		"administrador"
  	else
  		"application"
  	end
  end
end
