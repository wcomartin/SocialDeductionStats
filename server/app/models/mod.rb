class Mod < ApplicationRecord
    has_many :roles
    accepts_nested_attributes_for :roles
    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end
end
