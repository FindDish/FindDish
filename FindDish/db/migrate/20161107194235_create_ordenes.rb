class CreateOrdenes < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes do |t|

      t.integer :platillo_id
      t.integer :usuario_id	
      t.date :fecha
      t.time :hora
      t.string :estado
      t.timestamps

    end
     add_foreign_key :ordenes, :usuarios
     add_foreign_key :ordenes, :platillos
  end
end
