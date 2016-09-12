class AddRef < ActiveRecord::Migration
  def change
    add_reference :messages, :user, index:true
    add_reference :posts, :user, index:true
  end
end
