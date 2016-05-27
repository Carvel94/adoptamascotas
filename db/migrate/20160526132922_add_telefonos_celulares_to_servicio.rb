class AddTelefonosCelularesToServicio < ActiveRecord::Migration
  def change
    add_column :servicios, :telefono1, :string
    add_column :servicios, :telefono2, :string
    add_column :servicios, :celular1, :string
    add_column :servicios, :celular2, :string
  end
end
