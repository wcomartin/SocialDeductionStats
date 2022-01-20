class Death < ApplicationRecord
    belongs_to :player
    belongs_to :killer_player, foreign_key: "killer_player_id"
    belongs_to :meeting
end
