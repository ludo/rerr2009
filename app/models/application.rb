class Application < ActiveRecord::Base
  # === Associations
  belongs_to :user
  
  # === Validations
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :user_id
end