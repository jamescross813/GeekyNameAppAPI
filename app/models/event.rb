class Event < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :users, through: :user_events
  has_many :user_events
  has_many :groups
  has_many :availabilities, through: :event_availabilities
  has_many :event_availabilities
end
