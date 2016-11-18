class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.integer :numero
      t.string :email

      t.timestamps
    end
  end
end
