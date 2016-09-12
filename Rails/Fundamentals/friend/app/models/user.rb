class User < ActiveRecord::Base
  has_many :friends, through: :my_friends, source: :friendship
  has_many :my_friends, foreign_key: :friend_id, class_name: "Friendship"
end
