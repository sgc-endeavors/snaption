class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :title
      t.integer :user_id
      t.integer :medium_id
      t.integer :thumbs_up
      t.integer :thumbs_down
      t.timestamps
    end
  end
end
