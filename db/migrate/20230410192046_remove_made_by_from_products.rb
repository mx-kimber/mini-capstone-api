class RemoveMadeByFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :made_by, :string
  end
end
