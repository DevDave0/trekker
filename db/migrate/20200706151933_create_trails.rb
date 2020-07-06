class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :distance_of_trail
      t.integer :elevation
      t.string :difficulty
      t.integer :park_id

      t.timestamps
    end
  end
end
