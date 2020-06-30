class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: true
    validates :rating, inclusion: { in: 1..5, message: "Rating should be between 1 and 5"}
end
