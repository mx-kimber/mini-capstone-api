class ChangeImageUrlinImages < ActiveRecord::Migration[7.0]
  def change
    change_column :images, :image_url, :string
  end
end
