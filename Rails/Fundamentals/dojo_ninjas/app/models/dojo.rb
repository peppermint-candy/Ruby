class Dojo < ActiveRecord::Base
  has_many :ninjas, :dependent => :destroy

  validates :name , :city , presence: true, length: { in: 2..30}
  validates :state , presence: true, length: { is: 2 }

  before_save do
    self.state.upcase!
    self.city.capitalize!
    self.name.capitalize!
  end
end
