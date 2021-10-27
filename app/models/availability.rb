class Availability < ApplicationRecord
    has_many :users, through: :user_availabilities
    has_many :user_availabilities
    has_many :events, through: :events_availabilities
    has_many :events_availabilities
    has_many :groups, through: :group_availabilities
    has_many :group_availabilities
end
