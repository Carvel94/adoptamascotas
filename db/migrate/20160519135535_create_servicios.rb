class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :direccion
      t.string :ciudad
      t.string :estado
      t.text :descripcion
      t.string :logo
      t.string :correo1
      t.string :correo2
      t.integer :calificacion
      t.references :tipo_servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
