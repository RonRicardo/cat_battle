class Trainer < ApplicationRecord
  has_many :teams
  has_many :battles
  has_many :battle_cats, through: :team
end
