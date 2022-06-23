class AddDefaultValueToSimulacion < ActiveRecord::Migration[7.0]
  def change
    change_column :simulacions, :decisiones, :integer, default: -1
  end
end
