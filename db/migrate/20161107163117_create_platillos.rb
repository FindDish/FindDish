class CreatePlatillos < ActiveRecord::Migration[5.0]
  def change
    create_table :platillos do |t|
      t.string :nombre
      t.string :ingrediente
      t.integer :precio

      t.timestamps
    end
  end
end
