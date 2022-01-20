class Game < ApplicationRecord
    belongs_to :session
    has_many :game_players
    has_many :meetings
end
