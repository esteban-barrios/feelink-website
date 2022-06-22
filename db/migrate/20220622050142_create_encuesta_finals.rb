class CreateEncuestaFinals < ActiveRecord::Migration[7.0]
  def change
    create_table :encuesta_finals do |t|
      t.references :user, null: false, unique: true
      t.boolean :pregunta1
      t.boolean :pregunta2
      t.boolean :pregunta3
      t.boolean :pregunta4
      
      t.timestamps
    end
  end
end
