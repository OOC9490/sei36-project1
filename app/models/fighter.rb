class Fighter < ApplicationRecord
    has_many :specials
    has_many :posts
    has_and_belongs_to_many :games
end
