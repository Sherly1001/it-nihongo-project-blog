class Blog < ApplicationRecord
    has_many :comment, -> { order "created_at DESC"}
end
