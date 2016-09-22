class AddDateStringToDay < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :date, :integer
  end
end
