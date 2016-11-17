class CreateTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :telefonos do |t|
      t.integer :telefono
      t.integer :usuario_id
      t.timestamps
    end
    add_foreign_key :telefonos, :usuarios
  end
end
