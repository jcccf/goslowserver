class CreateColorReflections < ActiveRecord::Migration
  def self.up
    create_table :color_reflections do |t|
      t.integer :user_id
      t.integer :red
      t.integer :green
      t.integer :blue

      t.timestamps
    end
  end

  def self.down
    drop_table :color_reflections
  end
end
