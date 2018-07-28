class CatSerializer < ActiveModel::Serializer
  attributes :id, :health_points, :attack_points, :defense_points, :speed_points, :image_url
end
