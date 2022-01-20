class Player < ApplicationRecord
    has_many :game_players

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end
end
