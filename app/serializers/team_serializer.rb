class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :battle_cats
end
