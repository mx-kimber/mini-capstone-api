class AddMadeByToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :made_by, :string
  end
end
