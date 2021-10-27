class EventAvailability < ApplicationRecord
  belongs_to :event
  belongs_to :availability
end
