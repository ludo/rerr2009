module AuthorizationHelper
  def authorize(user, user_groups = [])
    user_groups = [user_groups] if user_groups.kind_of?(Symbol)
    
    user_groups.each do |user_group|
      user.user_groups << Factory(:user_group, :name => Lockdown.convert_reference_name(user_group))
    end
  end
end

World(AuthorizationHelper)
