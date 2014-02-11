require 'spec_helper'

describe "CityDesignations" do
  describe "GET /city_designations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get city_designations_path
      response.status.should be(200)
    end
  end
end
