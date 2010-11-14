class CreateColorReflections < ActiveRecord::Migration
  def self.up
    create_table :color_reflections do |t|
      t.integer :user_id
      t.decimal :red, :precision => 8, :scale => 4
      t.decimal :green, :precision => 8, :scale => 4
      t.decimal :blue, :precision => 8, :scale => 4

      t.timestamps
    end
  end

  def self.down
    drop_table :color_reflections
  end
end
