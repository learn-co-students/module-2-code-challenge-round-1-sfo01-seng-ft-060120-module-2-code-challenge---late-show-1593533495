class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def get_rating(guest)
    #     @appearance = Appearance.find(guest_id: guest, episode_id: self)
    #     if @appearance == nil
    #         "Appearance not found"
    #     else 
    #         @appearance.rating
    #     end
    # end
end
