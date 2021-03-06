require 'spec_helper'

describe Application do
  describe "associations" do
    it { should belong_to(:user) }
    it { should have_and_belong_to_many(:libraries) }
  end
  
  describe "validations" do
    before(:each) do
      Factory(:application)
    end
    
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name, :scope => :user_id) }
  end
end
