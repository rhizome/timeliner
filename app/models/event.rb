class Event < ActiveRecord::Base

  has_many :connections
  has_many :timelines, through: :connections

  has_many :links

  validates :name, presence: true
  validates :start_date, presence: true

  default_scope { order(:start_date) }
    
  def self.single_day
    where(one_day: true)
  end

  def self.ranged_date
    where(one_day: false)
  end

end
