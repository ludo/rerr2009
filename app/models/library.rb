class Library < ActiveRecord::Base
  # === Associations
  belongs_to :user
  has_many :events
  
  # === Validations
  validates_presence_of :name
  validates_presence_of :version
  validates_uniqueness_of :name
  
  # === Instance Methods
  
  # === Class Methods
end
