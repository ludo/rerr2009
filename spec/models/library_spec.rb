require 'spec_helper'

describe Library do
  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:events) }
  end

  describe "validations" do
    before(:each) do
      Factory(:library)
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:version) }
    it { should validate_uniqueness_of(:name) }
  end
end
