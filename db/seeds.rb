# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "ELIMINO CONTENIDO DE la tabla: Servicio"
Servicio.destroy_all

puts "ELIMINO CONTENIDO DE la tabla: TipoServicio"
TipoServicio.destroy_all


TipoServicio.create(nombre: "Tienda", descripcion: "Venta de artículos para mascotas")
TipoServicio.create(nombre: "Veterinarios", descripcion: "Doctores especializados en Gatos y perros")
TipoServicio.create(nombre: "Entrenadores", descripcion: "Personas dedicadas al entrenamiento de perros y/o gatos")
TipoServicio.create(nombre: "Casas temporales", descripcion: "Hogares que se encargan de cuidar animales que estan esperando por adopción")
TipoServicio.create(nombre: "Organizaciones", descripcion: "Organizaciones con o sin fines del lucro en pro de la vida de los animalitos de la calle")

puts "SE AGREGARON LOS REGISTROS INICIALES A TIPOSERVICIO"

puts "ELIMINO CONTENIDO AnimalAdoptar"
puts "AGREGANDO ALGUNOS GATOS"
AnimalAdoptar.destroy_all

AnimalAdoptar.create(tipo: "g", raza: "Mestizo", genero: "m", descripcion: "lindo gatito  color blanco de 2 meses de edad, vacunado y desparasitado, muy jugueton", edad: "2 meses",  rescatado: "0")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_gato01.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_gato02.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_gato03.jpg", animal_adoptar_id: key.id)

#AnimalAdoptar.create(tipo: "g", raza: "mestizo - angora", genero: "f", descripcion: "lindo gatito con mucho de la raza angora, color atigrado, de mes y medio de edad, muy tranquilo", edad: "mes y medio", rescatado: "1")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_gato03.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_gato04.jpg", animal_adoptar_id: key.id)


AnimalAdoptar.create(tipo: "g", raza: "mestizo", genero: "f", descripcion: "lindo gatito, muy cariñoso y tranquilo, su color es negro de aproximadamente 1 año", edad: "1 año",  rescatado: "0")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_gato05.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_gato06.jpg", animal_adoptar_id: key.id)

#AnimalAdoptar.create(tipo: "p", raza: "Pastor aleman", genero: "m", descripcion: "Este perro fue abandonado y rescatado, extremadamente sociable, y al parecer fue entrenado", edad: "4 años",  rescatado: "1")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_perro01.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_perro02.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_perro03.jpg", animal_adoptar_id: key.id)

AnimalAdoptar.create(tipo: "p", raza: "mestizo", genero: "f", descripcion: "lindo perro mestizo, fue abandonado y recuperado, muy tranquilo y sociable, jugueton con los niños, vacunado", edad: "2 años",  rescatado: "1")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_perro04.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_perro05.jpg", animal_adoptar_id: key.id)


AnimalAdoptar.create(tipo: "p", raza: "Pitbull", genero: "f", descripcion: "lindo pitbull, de color blanco, muy tranquilo, y educado, rescatado", edad: "1 año",  rescatado: "1")

key = AnimalAdoptar.last

AnimalAdoptarFoto.create(imagen: "adopta_perro06.jpg", animal_adoptar_id: key.id)
AnimalAdoptarFoto.create(imagen: "adopta_prtto07.jpg", animal_adoptar_id: key.id)

puts "SE AGREGARON LOS REGISTROS INICIALES A la tabla: AnimalAdoptar"

=begin
tambien se puede hacer
u = TipoServicio.new(
    nombre: "tienda",
    descripcion: ".........."
)
u.save!(validate: false)    colocando false no valida


=end