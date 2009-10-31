class User < ActiveRecord::Base
  acts_as_authentic

  # === Associations
  has_many :libraries
  has_and_belongs_to_many :user_groups
  
  # === Validations
end
