class CreateBattleCats < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_cats do |t|
      t.string :name
      t.integer :cat_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
