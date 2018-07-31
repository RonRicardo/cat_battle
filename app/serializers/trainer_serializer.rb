class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :teams

end
