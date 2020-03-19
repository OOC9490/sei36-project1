class Special < ApplicationRecord
    has_many :posts
    belongs_to :fighter, optional: true
end
