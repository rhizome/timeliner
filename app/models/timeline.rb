class Timeline < ApplicationRecord
  has_many :connections
  has_many :events, through: :connections

  validates :name, presence: true
end
