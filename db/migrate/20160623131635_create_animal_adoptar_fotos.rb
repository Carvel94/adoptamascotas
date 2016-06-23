class CreateAnimalAdoptarFotos < ActiveRecord::Migration
  def change
    create_table :animal_adoptar_fotos do |t|
      t.string :imagen
      t.references :animal_adoptar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
