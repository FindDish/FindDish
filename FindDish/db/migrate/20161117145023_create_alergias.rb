class CreateAlergias < ActiveRecord::Migration[5.0]
  def change
    create_table :alergias do |t|
      t.string :alergias
      t.integer :usuario_id
      t.timestamps
    end
    add_foreign_key :alergias, :usuarios
  end
end
