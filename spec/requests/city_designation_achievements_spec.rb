require 'spec_helper'

describe "CityDesignationAchievements" do
  describe "GET /city_designation_achievements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get city_designation_achievements_path
      response.status.should be(200)
    end
  end
end
