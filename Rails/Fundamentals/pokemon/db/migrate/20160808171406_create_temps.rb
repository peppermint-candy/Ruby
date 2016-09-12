class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.references :pokemon, index: true
      t.references :trainer, index: true

      t.timestamps
    end
  end
end
