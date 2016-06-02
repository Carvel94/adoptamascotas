class CreateDatosPersonals < ActiveRecord::Migration
  def change
    create_table :datos_personals do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nacimiento
      t.boolean :sexo
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :estado
      t.string :ciudad
      t.integer :calificacion

      t.timestamps null: false
    end
  end
end
