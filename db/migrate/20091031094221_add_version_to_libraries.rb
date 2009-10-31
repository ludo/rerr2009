class AddVersionToLibraries < ActiveRecord::Migration
  def self.up
    add_column :libraries, :version, :string, :null => false
  end

  def self.down
    remove_column :libraries, :version
  end
end
