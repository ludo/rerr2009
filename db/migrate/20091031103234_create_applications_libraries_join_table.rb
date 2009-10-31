class CreateApplicationsLibrariesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :applications_libraries, :id => false do |t|
      t.references :application
      t.references :library
    end
  end

  def self.down
    drop_table :applications_libraries
  end
end
