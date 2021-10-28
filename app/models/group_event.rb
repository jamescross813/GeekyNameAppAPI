class GroupEvent < ApplicationRecord
  belongs_to :group
  belongs_to :event
end
