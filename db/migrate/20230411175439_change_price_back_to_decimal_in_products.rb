class ChangePriceBackToDecimalInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, precision: 8, scale: 2, after: :float_val
  end
end
