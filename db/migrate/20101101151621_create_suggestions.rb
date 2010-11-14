class CreateSuggestions < ActiveRecord::Migration
  def self.up
    create_table :suggestions do |t|
      t.string :name
      t.timestamp :time_entered

      t.timestamps
    end
  end

  def self.down
    drop_table :suggestions
  end
end
