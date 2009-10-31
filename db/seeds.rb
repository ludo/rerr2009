# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Setup initial user and make this user an administrator
user = User.create(
  :login => "admin",
  :email => "admin@example.com",
  :password => "password",
  :password_confirmation => "password"
)

Lockdown::System.make_user_administrator(user)

# Test gems
Library.create(:name => "cucumber", :version => "0.4.3")
Library.create(:name => "rails", :version => "2.3.4", :homepage => "http://rubyonrails.org")
Library.create(:name => "rspec", :version => "1.2.9")