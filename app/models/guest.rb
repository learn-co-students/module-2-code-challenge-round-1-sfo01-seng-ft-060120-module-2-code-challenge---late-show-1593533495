class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def highest_rated_shows
        self.appearances.order(rating: :desc)
    end
end
