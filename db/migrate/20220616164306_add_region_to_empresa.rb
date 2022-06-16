class AddRegionToEmpresa < ActiveRecord::Migration[7.0]
  def change
    add_column :empresas, :region, :string
  end
end
