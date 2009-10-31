class Application < ActiveRecord::Base
  # === Associations
  belongs_to :user
  has_and_belongs_to_many :libraries
  
  # === Validations
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :user_id
end