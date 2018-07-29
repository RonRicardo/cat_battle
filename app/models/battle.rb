class Battle < ApplicationRecord
  belongs_to :challenger, class_name: 'Trainer', foreign_key: 'trainer_id'
  belongs_to :opponent, class_name: 'Trainer', foreign_key: 'trainer_id'
end
