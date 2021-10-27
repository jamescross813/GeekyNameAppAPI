class User < ApplicationRecord
    has_many :events, through: :user_events
    has_many :user_events
    has many :groups, through: :user_groups
    has_many :user_groups
    has_many :availabilities, through: user_availabilities
    has_many :user_availabilities
    has_many :friends
end
