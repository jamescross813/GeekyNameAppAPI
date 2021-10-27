class UserAvailability < ApplicationRecord
  belongs_to :user
  belongs_to :availability
end
