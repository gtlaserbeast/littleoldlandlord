class Repair < ActiveRecord::Base
  include Workflow
  belongs_to :rental
  validates :category, presence: true
  validates :description, presence: true

  workflow do 
    state :new do
      event :schedule, :transitions_to => :scheduled
      event :fix, :transitions_to => :fixed
    end
    state :scheduled do
      event :fix, :transitions_to => :fixed
      event :delay, :transitions_to => :delayed
    end
    state :delayed do
      event :fix, :transitions_to => :fixed
      event :schedule, :transitions_to => :scheduled  
    end
    state :fixed
  end

end
