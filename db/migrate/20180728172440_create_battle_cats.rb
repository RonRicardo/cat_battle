class CreateBattleCats < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_cats do |t|
      t.string :name
      t.references :cat, foreign_key: true
      t.refrences :trainer

      t.timestamps
    end
  end
end
