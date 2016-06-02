module CodigosGenerales

extend ActiveSupport::Concern

def colocar_layout
end

def cargarOpcionesDelMenuServicios
	@tipo_servicios = TipoServicio.all
end

end