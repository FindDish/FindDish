class CreateReservas < ActiveRecord::Migration[5.0]
  def change

    create_table :reservas do |t|
      t.date :fecha
      t.time :hora
      t.string :estado
      t.timestamps
      t.integer :establecimiento_id
      t.integer :usuario_id
    end

    add_foreign_key :reservas, :usuarios
    add_foreign_key :reservas, :establecimientos

  end
end
