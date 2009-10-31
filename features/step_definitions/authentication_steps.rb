# === Givens

Given /^I am logged in$/ do
  Given "I am logged in as an administrator"
end

Given /^I am logged in as a(?:n?) (.+)$/ do |role|
  @user = Factory(:user)
  authorize(@user, role.pluralize.downcase.to_sym)
  When "I login with valid credentials"
  Then "I should be logged in"
end

# === Whens

When /^I login with valid credentials$/ do
  authorize(@user, Lockdown.administrator_group_symbol) if @user.user_groups.empty?
  
  visit "/login"
  fill_in("Login", :with => @user.login)
  fill_in("Password", :with => @user.password)
  click_button("Login")
end

When /^I login with invalid credentials$/ do
  visit "/login"
  fill_in("Login", :with => "idonotexist")
  fill_in("Password", :with => "secret")
  click_button("Login")
end

When /^I login without entering credentials$/ do
  visit "/login"
  click_button("Login")
end

# === Thens

Then /^I should be logged in$/ do
  controller.session[:current_user_id].should == @user.id
end