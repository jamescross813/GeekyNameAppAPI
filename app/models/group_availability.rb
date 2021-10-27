class GroupAvailability < ApplicationRecord
  belongs_to :group
  belongs_to :availability
end
