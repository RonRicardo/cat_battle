class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :teams
  #has_many :battle_cats, through: :teams
end
