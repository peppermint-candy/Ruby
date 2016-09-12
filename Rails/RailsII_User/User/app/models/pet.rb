class Pet < ActiveRecord::Base
  has_secure_password

  validates :pet, :email, :password, presence:true
end
