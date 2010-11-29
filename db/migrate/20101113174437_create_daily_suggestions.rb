class CreateDailySuggestions < ActiveRecord::Migration
  def self.up
    create_table :daily_suggestions do |t|
      t.integer :user_id
      t.integer :suggestion_id
      t.timestamp :time_entered

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_suggestions
  end
end
