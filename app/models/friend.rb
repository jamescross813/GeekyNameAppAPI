class Friend < ApplicationRecord
    has_many :groups, through: friend_groups
    has_many :friend_groups
    belongs_to :user
end
