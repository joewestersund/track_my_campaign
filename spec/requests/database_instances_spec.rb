require 'spec_helper'

describe "DatabaseInstances" do
  describe "GET /database_instances" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get database_instances_path
      response.status.should be(200)
    end
  end
end
