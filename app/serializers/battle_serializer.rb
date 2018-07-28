class BattleSerializer < ActiveModel::Serializer
  attributes :id, :challenger_id, :opponent_id, :winner_id, :loser_id
end
