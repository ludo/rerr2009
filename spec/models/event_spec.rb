require 'spec_helper'

describe Event do
  describe "associations" do
    it { should belong_to(:library) }
  end

  describe "validations" do
    it { should validate_presence_of(:subject) }
    it { should validate_presence_of(:source) }
  end
end
