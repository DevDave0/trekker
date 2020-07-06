class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.integer :user_id
      t.integer :trail_id
      t.integer :user_rating

      t.timestamps
    end
  end
end
