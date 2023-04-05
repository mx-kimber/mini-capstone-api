class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :made_by
      t.integer :price
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
