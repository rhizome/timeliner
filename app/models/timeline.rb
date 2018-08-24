class Timeline < ActiveRecord::Base
  has_many :connections
  has_many :events, through: :connections

  validates :name, presence: true
end
