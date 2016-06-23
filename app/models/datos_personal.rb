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

#al colocar self hace que el método sea un método de clase por lo que no necesito instanciar entre otras cosas
def self.estados_ciudades_venezolanos_hash
    {
    'Amazonas' => {},
    'Anzoategui' => {},
    'Apure' => {capital: "San Fernando de Apure", municipios: ['Achaguas', 'Biruaca', 'Muñoz', 'Páez', 'Pedro Camejo', 'Rómulo Gallegos', 'San Fernando'] },
    'Aragua' => {capital: "Maracay", municipios: ['Bolívar', 'Camatagua', 'Francisco Linares Alcántara', 'Girardot', 'José Ángel Lamas', 'José Félix Ribas', 'José Rafael Revenga', 'Libertador', 'Mario Briceño Iragorry', 'Ocumare de la Costa de Oro', 'San Casimiro', 'San Sebastián', 'Santiago Mariño', 'Santos Michelena', 'Sucre, Tovar', 'Urdaneta', 'Zamora'] },
    'Barinas' => {},
    'Bolívar' => {},
    'Carabobo' => {},
    'Cojedes' => {},
    'Guarico' => {},
    'Delta Amacuro' => {},
    'Dependencia Federal' => {},
    'Distrito Capital' =>{capital: "Caracas", municipios: ['Libertador']},
    'Falcon' => {},
    'Lara' => {},
    'Maragarita' => {},
    'Merida' => {},
    'Miranda' => {capital: "Los Teques", municipios: ['Baruta', 'Chacao', 'Sucre', 'Hatillo']},
    'Monagas' => {},
    'Nueva Esparta' => {capital: "La Asunción", municipios: ['Antolín del Campo', 'Arismendi', 'Díaz', 'García', 'Gómez', 'Maneiro', 'Marcano', 'Mariño', 'Península de Macanao', 'Tubores', 'Villalba']},
    'Portuguesa' => {},
    'Sucre' => {},
    'Tachira' => {},
    'Trujillo' => {},
    'Vargas' => {},
    'Yaracuy' => {},
    'Zulia'=> {}
    }
 
end

end
