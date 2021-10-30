class User < ApplicationRecord
    has_many :events, through: :user_events
    has_many :user_events
    has_many :groups
    # has_many :user_groups
    has_many :availabilities, through: :user_availabilities
    has_many :user_availabilities
    has_many :friends

    has_secure_password
    validates :username, presence: true, uniqueness: true 
    validates :password, presence: true
end
