class Application < ActiveRecord::Base
  # === Associations
  belongs_to :user
  has_and_belongs_to_many :libraries
  
  # === Validations
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :user_id
  
  # === Instance Methods
  
  def update_dependencies(deps)
    deps ||= {}
    deps.each_pair do |library, version|
      libraries << Library.find_or_create_by_name(:name => library, :version => version)
    end
  end
end