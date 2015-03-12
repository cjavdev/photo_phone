class AddDescriptionIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :description_id, :integer
  end
end
