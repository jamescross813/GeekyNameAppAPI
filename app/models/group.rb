class Group < ApplicationRecord
    has_many :users, through: :user_groups
    has_many :user_groups
    # belongs_to :user
    has_many :availabilities, through: :group_availabilities
    has_many :group_availabilities
    has_many :events, through: :group_events
    has_many :group_events
    has_many :friends, through: :friend_groups
    has_many :friend_groups
end
