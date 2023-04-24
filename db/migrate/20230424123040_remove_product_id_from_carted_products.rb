class RemoveProductIdFromCartedProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carted_products, :product_id
  end
end
