class CreateLogScreens < ActiveRecord::Migration
  def self.up
    create_table :log_screens do |t|
      t.integer :user_id
      t.integer :screen_id
      t.boolean :entering
      t.timestamp :time_entered

      t.timestamps
    end
  end

  def self.down
    drop_table :log_screens
  end
end
