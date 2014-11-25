class CreateFavoriteCaptions < ActiveRecord::Migration
  def change
    create_table :favorite_captions do |t|
      t.string :caption_id
      t.string :integer
      t.string :user_id
      t.string :integer
      t.timestamps
    end
  end
end
