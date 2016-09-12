class User < ActiveRecord::Base
  has_many :messages
  has_many :messages , through: :posts
  has_many :posts , :dependent => :destroy
  has_many :owners
  has_many :blogs, through: :owners
  has_many :comments, as: :commentable

  validates :first_name, :last_name, :email_address, presence:true
  validates :first_name, :last_name, length: {in:2...20}

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email_address, uniqueness: { case_sensitive: false}, format: { with: EMAIL_REGEX}

  before_save do
    self.email_address.downcase!
    self.first_name.capitalize!
    self.last_name.capitalize!
  end

end
