class AddProcessedToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :processed, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :events, :processed
  end
end
