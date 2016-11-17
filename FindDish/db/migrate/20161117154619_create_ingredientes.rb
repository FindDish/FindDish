class CreateIngredientes < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredientes do |t|
      t.string :ingredientes
      t.integer :platillo_id
      t.timestamps
    end
      add_foreign_key :ingredientes, :platillos
  end
end
