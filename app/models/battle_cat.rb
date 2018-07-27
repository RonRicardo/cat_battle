class BattleCat < ApplicationRecord
  belongs_to :cat
  belongs_to :team
end
