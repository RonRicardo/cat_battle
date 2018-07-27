class Team < ApplicationRecord
  has_many :battle_cats
  belongs_to :trainer
end
