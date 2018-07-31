class Trainer < ApplicationRecord
  has_many :teams
  has_many :battles
  has_many :battle_cats, through: :teams

  def show_cats
    self.teams.map do |team|
      team.battle_cats.map do |battle_cat|
        {battle_cat: battle_cat,
         cat: battle_cat.cat}
      end
    end
  end
end
