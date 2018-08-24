class Connection < ActiveRecord::Base
  belongs_to :timeline
  belongs_to :event
end
