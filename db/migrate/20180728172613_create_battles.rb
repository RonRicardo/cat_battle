class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :challenger_id
      t.integer :opponent_id
      t.integer :winner_id
      t.integer :loser_id

      t.timestamps
    end
  end
end
