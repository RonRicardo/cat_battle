class ChangeBattleCatsColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :battle_cats, :trainer_id, :team_id
  end
end
