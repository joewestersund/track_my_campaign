require 'spec_helper'

describe "InterestLevels" do
  describe "GET /interest_levels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get interest_levels_path
      response.status.should be(200)
    end
  end
end
