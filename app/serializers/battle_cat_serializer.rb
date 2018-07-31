class BattleCatSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :cat
end
