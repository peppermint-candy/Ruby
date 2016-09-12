class Pet < ActiveRecord::Base

  validates :owner_name, :owner_age, :pet_name, :pet_age , presence:true

end
