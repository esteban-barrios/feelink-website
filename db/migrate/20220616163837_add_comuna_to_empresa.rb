class AddComunaToEmpresa < ActiveRecord::Migration[7.0]
  def change
    add_column :empresas, :comuna, :string
  end
end
