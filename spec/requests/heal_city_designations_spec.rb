require 'spec_helper'

describe "HealCityDesignations" do
  describe "GET /heal_city_designations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get heal_city_designations_path
      response.status.should be(200)
    end
  end
end
