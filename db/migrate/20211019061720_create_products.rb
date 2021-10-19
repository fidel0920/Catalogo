class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Nombre
      t.string :Descripcion
      t.references :Category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
