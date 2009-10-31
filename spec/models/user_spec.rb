require 'spec_helper'

describe User do
  describe "associations" do
    it { should have_many(:libraries) }
    it { should have_and_belong_to_many(:user_groups) }
  end
  
  describe "validations" do
    before(:each) do
      Factory(:user)
    end
    
    it { should validate_confirmation_of(:password) }
    it { should validate_length_of(:password, :minimum => 4) }
    it { should validate_length_of(:email, :minimum => 6) }
    it { should validate_uniqueness_of(:email, :case_sensitive => false) }
  end
end
