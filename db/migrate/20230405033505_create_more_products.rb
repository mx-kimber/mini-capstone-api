class CreateMoreProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :more_products do |t|
      t.string :category
      t.string :category2

      t.timestamps
    end
  end
end
