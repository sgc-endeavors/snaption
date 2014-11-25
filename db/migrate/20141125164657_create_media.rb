class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :categories
      t.integer :user_id
      t.string :s3_media_loc
      t.boolean :inactive
      t.timestamps
    end
  end
end
