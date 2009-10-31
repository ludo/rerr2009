# === Given
Given /^I have an application "([^\"]*)" on gemstream$/ do |name|
  @application = Factory(:application, :name => name, :user => @user)
end

Given /^it does not have any dependencies listed on gemstream yet$/ do
  @application.libraries.count.should == 0
end

Given /^it has the following dependencies listed in my source code:$/ do |libraries|
  @libraries = libraries
end

# === When
When /^I push dependencies for "([^\"]*)"$/ do |app_name|
  application = Application.find_by_name(app_name)
  visit(publish_deps_url(:login => application.user.login, :name => application.name), :post, :dependencies => { "rails" => "2.3.4", "cucumber" => "0.4.2" })
end

# === Then