class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :photo_id
      t.integer :author_id
      t.string :body

      t.timestamps null: false
    end
  end
end
