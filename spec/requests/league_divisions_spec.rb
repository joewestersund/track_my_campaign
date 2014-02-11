require 'spec_helper'

describe "LeagueDivisions" do
  describe "GET /league_divisions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get league_divisions_path
      response.status.should be(200)
    end
  end
end
