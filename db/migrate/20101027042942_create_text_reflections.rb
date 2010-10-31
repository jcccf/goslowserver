class CreateTextReflections < ActiveRecord::Migration
  def self.up
    create_table :text_reflections do |t|
      t.integer :user_id
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :text_reflections
  end
end
