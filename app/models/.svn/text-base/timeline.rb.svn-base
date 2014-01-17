class Timeline < ActiveRecord::Base
  attr_accessible :name

  has_many :connections
  has_many :events, through: :connections, :order => 'start_date'

  validates :name, presence: true
end
