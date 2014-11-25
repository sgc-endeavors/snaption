class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :categories
      t.integer :user_id
      t.string :s3_image_loc
      t.boolean :inactive
      t.timestamps
    end
  end
end
