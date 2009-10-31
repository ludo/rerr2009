class AddHomepageToLibraries < ActiveRecord::Migration
  def self.up
    add_column :libraries, :homepage, :string
  end

  def self.down
    remove_column :libraries, :homepage
  end
end
