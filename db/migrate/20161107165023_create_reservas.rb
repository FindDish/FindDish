class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.datetime :fecha
      t.string :estado

      t.timestamps
    end
  end
end
