class Appearance < ApplicationRecord

    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: { greater_than: 0 }
    validates :rating, numericality: { less_than: 6 }

    validates :guest_id, uniqueness: { scope: [:episode_id]}

end
