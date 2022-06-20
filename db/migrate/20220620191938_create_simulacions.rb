class CreateSimulacions < ActiveRecord::Migration[7.0]
  def change
    create_table :simulacions do |t|
      t.references :user, null: false
      t.string :nombre, null: false, unique: true
      t.boolean :realizada, null: false, default: false

      t.timestamps
    end
  end
end
