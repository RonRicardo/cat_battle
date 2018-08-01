class Trainer < ApplicationRecord
  has_many :teams
  has_many :battles
  has_many :battle_cats, through: :teams

  validates :username, {uniqueness: true, presence: true}

end
