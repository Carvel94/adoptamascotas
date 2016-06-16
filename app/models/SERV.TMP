class Servicio < ActiveRecord::Base
  belongs_to :tipo_servicio, -> {order('nombre DESC')}

  validates :nombre, :presence => {:message => "Debe colocar el nombre del servicio"}
validates :direccion, :presence => {:message => "Debe colocar la dirección"}
validates :ciudad, :presence => {:message => "Debe colocar la ciudad donde se encuentra"}
validates :estado, :presence => {:message => "Debe colocar el estado donde se encuentra"}
validates :descripcion, :presence => {:message => "Debe colocar la descripción del servicio que está agregando"}


#VALID_EMAIL_REGEX = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/i

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :correo1, presence: {message: "Debe colocar su correo electrónico"},
                  format:{:with => VALID_EMAIL_REGEX, message: "El formato del correo electrónico es invalido"},
                  :uniqueness => {:message => "El correo electrónico ya está siendo usado"}

validates :correo2, format:{:with => VALID_EMAIL_REGEX, message: "El formato del correo electrónico es invalido"}, if: "!correo2.blank?"

validate :presencia_de_algun_telefono

def presencia_de_algun_telefono
	if[self.telefono1, self.telefono2, self.celular1, self.celular2].reject(&:blank?).size==0
		errors.add(:telefono1, "Debe colocar al menos un telefono de contacto")
	end
end

end
