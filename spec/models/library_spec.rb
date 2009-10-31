require 'spec_helper'

describe Library do
  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:events) }
    it { should have_and_belong_to_many(:applications) }
  end

  describe "validations" do
    before(:each) do
      Factory(:library)
    end

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
