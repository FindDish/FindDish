class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.date :fecha
      t.time :hora
      t.string :estado

      t.timestamps
    end
  end
end
