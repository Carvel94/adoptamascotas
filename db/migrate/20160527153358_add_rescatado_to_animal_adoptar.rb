class AddRescatadoToAnimalAdoptar < ActiveRecord::Migration
  def change
    add_column :animal_adoptars, :rescatado, :string
  end
end
