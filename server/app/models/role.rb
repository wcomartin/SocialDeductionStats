class Role < ApplicationRecord
    belongs_to :mod
    has_many :game_players
    has_many :game_players_secondary, foreign_key: "secondary_role_id"
    has_many :game_players_winning, foreign_key: "winning_role_id"
end
