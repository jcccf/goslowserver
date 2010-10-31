class CreatePhotoReflections < ActiveRecord::Migration
  def self.up
    create_table :photo_reflections do |t|
      t.integer :user_id
      t.string :name
      t.string :content_type
      t.binary :data, :limit => 1.megabyte

      t.timestamps
    end
  end

  def self.down
    drop_table :photo_reflections
  end
end
