class Connection < ApplicationRecord
  belongs_to :timeline
  belongs_to :event
end
