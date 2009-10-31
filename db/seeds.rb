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
  :email => "ludo@kabisa.nl",
  :password => "password",
  :password_confirmation => "password"
)

Lockdown::System.make_user_administrator(user)

l = Library.create(:name => "cucumber", :version => "0.4.2")
Library.create(:name => "rails", :version => "2.3.2", :homepage => "http://rubyonrails.org")
Library.create(:name => "rspec", :version => "1.2.8")

app = Application.create(:user => user, :name => "Test123")
app.libraries << l
app.save
