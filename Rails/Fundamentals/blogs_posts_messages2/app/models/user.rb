class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_many :messages
  has_many :posts
  has_many :owners
  has_many :blogs, through: :owners

  validates :email, format: { with: EMAIL_REGEX }
  validates :last_name, presence: true
  validates :email, presence: true
  validates :first_name, presence: true

end
