class AddCorreoToDatosPersonal < ActiveRecord::Migration
  def change
    add_column :datos_personals, :correo_alternativo, :string
  end
end
