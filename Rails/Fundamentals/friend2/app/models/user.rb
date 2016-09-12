class User < ActiveRecord::Base
  # has_many :friendships
  # has_many :friends, through: :friendships
  has_and_belongs_to_many :friends,
                          :class_name => "User",
                          :join_table => "friendships",
                          :foreign_key => "user_id",
                          :association_foreign_key => "friend_id"

  has_and_belongs_to_many :my_friends,
                          :class_name => "User",
                          :join_table => "friendships",
                          :foreign_key => "friend_id",
                          :association_foreign_key => "user_id"

end
