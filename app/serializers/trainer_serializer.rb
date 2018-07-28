class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
end
