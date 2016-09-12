class AddNewColumn < ActiveRecord::Migration
  def change
    # add_reference :posts , :user, index:true
    remove_column :messages, :User_id
  end
end
