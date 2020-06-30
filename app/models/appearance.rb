class Appearance < ApplicationRecord
    belongs_to :episode 
    belongs_to :guest

    validates :rating,:numericality => { greater_than_or_equal_to: 0, less_than: 5 }
end
