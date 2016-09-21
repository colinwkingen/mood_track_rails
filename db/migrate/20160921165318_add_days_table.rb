class AddDaysTable < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :sleep
      t.string :note
      t.integer :mood
      t.integer :money_spent
      t.integer :profile_id

      t.timestamps
    end
  end
end
