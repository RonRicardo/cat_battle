class BattleCatSerializer < ActiveModel::Serializer
  attributes :id, :name, :trainer
  has_one :cat
end
