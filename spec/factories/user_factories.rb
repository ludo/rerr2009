Factory.define :user do |user|
  user.login "john"
  user.sequence(:email) { |n| "user#{n}@example.com" }
  user.password "secret"
  user.password_confirmation "secret"
end