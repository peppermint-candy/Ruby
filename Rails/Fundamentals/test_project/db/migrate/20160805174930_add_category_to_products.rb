class AddCategoryToProducts < ActiveRecord::Migration
  def change
    # add_column :what_table_to_add_column, :the_name_of_column, :type_of_column
    add_column :products, :category, :string
    # remove_column :products
  end
end
