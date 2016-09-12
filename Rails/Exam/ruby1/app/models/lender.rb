class Lender < ActiveRecord::Base
  has_secure_password
  has_many :borrowers
  has_many :debts , :through => :debts


  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name,:password,:money, :presence => true

  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => true
end
