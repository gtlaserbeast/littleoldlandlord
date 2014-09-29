class Rental < ActiveRecord::Base
  has_many :repairs
  validates :address, presence: true
  validates :address, uniqueness: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode
end
