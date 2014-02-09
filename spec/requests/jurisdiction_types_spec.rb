require 'spec_helper'

describe "JurisdictionTypes" do
  describe "GET /jurisdiction_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get jurisdiction_types_path
      response.status.should be(200)
    end
  end
end
