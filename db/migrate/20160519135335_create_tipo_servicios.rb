class CreateTipoServicios < ActiveRecord::Migration
  def change
    create_table :tipo_servicios do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
