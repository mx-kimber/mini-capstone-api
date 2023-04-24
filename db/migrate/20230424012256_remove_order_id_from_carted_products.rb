class RemoveOrderIdFromCartedProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carted_products, :order_id
  end
end
