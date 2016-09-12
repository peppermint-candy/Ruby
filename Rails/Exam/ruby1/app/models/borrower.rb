class Borrower < ActiveRecord::Base
  has_secure_password
  has_many :debts
  has_many :lenders , :through => :debts

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name,:password,:need, :amount, :presence => true

  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => true

end
