class AddLastNotifiedToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :last_notified, :datetime
  end

  def self.down
    remove_column :users, :last_notified_at
  end
end
