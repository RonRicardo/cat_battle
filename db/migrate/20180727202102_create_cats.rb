class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.integer :health_points
      t.integer :attack_points
      t.integer :defense_points
      t.integer :speed_points
      t.string :image_url

      t.timestamps
    end
  end
end
