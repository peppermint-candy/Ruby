class Temp < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :trainer
end
