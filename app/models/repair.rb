class Repair < ActiveRecord::Base
  belongs_to :rental
  validates :category, presence: true
  validates :description, presence: true
  after_initialize :init

  def init
    self.state = 'In Need of Repair'
  end

end
