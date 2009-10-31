class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.references :library
      t.string :subject, :null => false
      t.string :source, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
