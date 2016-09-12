class Blog < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  has_many :owners
  has_many :messages , through: :posts
  has_many :users, through: :owners

  validates :name, :description , presence: true

end
