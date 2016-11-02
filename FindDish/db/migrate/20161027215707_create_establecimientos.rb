class CreateEstablecimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :establecimientos do |t|
      t.string :[nombre
      t.string :especialidad
      t.string :email
      t.integer :calificacion
      t.string :direccion
      t.string :rif
      t.integer :telefono

      t.timestamps
    end
  end
end
