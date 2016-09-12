class User < ActiveRecord::Base
  has_many :secrets , dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes , source: :secret

  has_secure_password
  regex_email = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name,:email, presence:true
  validates :email, uniqueness: { case_sensitive: false }, format: {with: regex_email}
end
