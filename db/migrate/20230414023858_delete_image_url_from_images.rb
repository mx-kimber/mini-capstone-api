class DeleteImageUrlFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :image_url
  end
end
