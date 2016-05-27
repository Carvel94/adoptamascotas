class TipoServicio < ActiveRecord::Base
	has_many :servicios

	validates :nombre, :presence => {:message => "Debe colocar el nombre del servicio"}
	validates :descripcion, :presence => {:message => "Debe colocar la descripcion del servicio"}

	def datos
		"#{nombre} : #{descripcion}"
	end
end
