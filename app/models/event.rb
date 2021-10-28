class Event < ApplicationRecord
  belongs_to :group
  has_many :users, through: :user_events
  has_many :user_events
  has_many :groups, through: :group_events
  has_many :grou_events
  has_many :availabilities, through: :event_availabilities
  has_many :event_availabilities
end
