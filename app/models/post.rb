class Post < ApplicationRecord
    belongs_to :fighter, optional: true
    belongs_to :user, optional: true
    belongs_to :game, optional: true
    belongs_to :special, optional: true
    has_many :likes,  :dependent => :destroy
end
