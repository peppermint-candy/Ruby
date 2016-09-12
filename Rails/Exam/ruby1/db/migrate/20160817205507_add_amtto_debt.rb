class AddAmttoDebt < ActiveRecord::Migration
  def change
    add_column :debts, :amount, :integer
  end
end
