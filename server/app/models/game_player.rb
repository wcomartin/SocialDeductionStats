class GamePlayer < ApplicationRecord
    belongs_to :game
    belongs_to :player
    belongs_to :role
    belongs_to :secondary_role, foreign_key: "secondary_role_id"
    belongs_to :winning_role, foreign_key: "winning_role_id"
end
