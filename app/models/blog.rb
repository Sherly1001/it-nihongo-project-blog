class Blog < ApplicationRecord
    belongs_to :user
    has_many :comment, -> { order "created_at DESC"}
    has_many :likes
end
