class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :owner_name
      t.string :pet_name
      t.integer :owner_age
      t.integer :pet_age

      t.timestamps null: false
    end
  end
end
