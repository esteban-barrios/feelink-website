class CreateEmpresas < ActiveRecord::Migration[7.0]
  def change
    create_table :empresas do |t|
      t.string :nombre, null: false, unique: true
      t.string :direccion, null: false
      t.string :oficina, null: true
      t.string :rut, null: true, unique: true

      t.timestamps
    end
  end
end
