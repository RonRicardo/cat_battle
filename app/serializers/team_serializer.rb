class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :battle_cats
  has_many :battle_cats
  has_one :trainer
end
