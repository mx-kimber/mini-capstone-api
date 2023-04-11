class DropTableMoreProducts < ActiveRecord::Migration[7.0]
  def change
    drop_table :more_products
  end
end
