class AddEnergyLevelToDay < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :energy_level, :integer
  end
end
