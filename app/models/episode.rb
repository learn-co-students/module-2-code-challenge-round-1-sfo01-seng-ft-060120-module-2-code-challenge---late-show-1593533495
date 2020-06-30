class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        if self.appearances.any?
            (self.appearances.sum { |appearance| appearance.rating }.to_f / self.appearances.count).round(2)
        end 
    end
end
