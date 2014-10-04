class Rental < ActiveRecord::Base
  has_many :repairs
  validates :address, presence: true
  validates :address, uniqueness: true
  validates :description, presence: true
  validates :rent_price, presence: true
  validates_numericality_of :rent_price, on: :create
  validates :landlord_id, presence: true
  geocoded_by :address
  after_validation :geocode
  after_initialize :init

    def init
      self.availability = 'Available'
      self.pay_state = 'Due'
    end

end
