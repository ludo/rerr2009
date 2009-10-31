class Event < ActiveRecord::Base
  # === Associations
  belongs_to :library
  
  # === Validations
  validates_presence_of :subject
  validates_presence_of :source
end
