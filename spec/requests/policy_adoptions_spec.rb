require 'spec_helper'

describe "PolicyAdoptions" do
  describe "GET /policy_adoptions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get policy_adoptions_path
      response.status.should be(200)
    end
  end
end
