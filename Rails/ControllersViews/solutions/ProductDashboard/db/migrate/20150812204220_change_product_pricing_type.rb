class ChangeProductPricingType < ActiveRecord::Migration
  def change
    change_column :products, :pricing, :decimal
  end
end
