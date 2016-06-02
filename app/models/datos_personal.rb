class DatosPersonal < ActiveRecord::Base
	validates :nombre, :presence => {:message => "Debe colocar su nombre completo"}
	validates :apellido, :presence => {:message => "Debe colocar su apellido completo"}

	validates :ciudad, :presence => {:message => "Debe colocar la ciudad donde vive"}
	validates :estado, :presence => {:message => "Debe colocar el estado donde se encuentra"}

	validate :sexo, :validar_sexo

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


	validate :presencia_de_algun_telefono                

#scope :publicado, lambda { where("servicios.nombre IS NOT NULL") } 

def validar_sexo
	if self.sexo==nil
		errors.add(:sexo, "Debe seleccionar su sexo")
	end
end

def presencia_de_algun_telefono
	if [self.telefono, self.celular].reject(&:blank?).size == 0
		errors.add(:telefono1, "Debe colocar al menos un teléfono de contacto")
	end 
end


def estados_venezolanos
	[
		'Amazonas', 
		'Anzoategui', 
		'Apure',
		'Aragua',
		'Barinas',
		'Bolívar',
		'Carabobo',
		'Cojedes',
		'Guarico',
		'Delta Amacuro',
		'Dependencia Federal',
		'Distrito Capital Caracas',
		'Falcon',
		'Lara',
		'Margarita',
		'Merida',
		'Miranda',
		'Monagas',
		'Portuguesa',
		'Sucre',
		'Tachira',
		'Trujillo',
		'Vargas',
		'Yaracuy',
		'Zulia'
	]
end
end
