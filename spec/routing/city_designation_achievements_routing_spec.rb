require "spec_helper"

describe CityDesignationAchievementsController do
  describe "routing" do

    it "routes to #index" do
      get("/city_designation_achievements").should route_to("city_designation_achievements#index")
    end

    it "routes to #new" do
      get("/city_designation_achievements/new").should route_to("city_designation_achievements#new")
    end

    it "routes to #show" do
      get("/city_designation_achievements/1").should route_to("city_designation_achievements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/city_designation_achievements/1/edit").should route_to("city_designation_achievements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/city_designation_achievements").should route_to("city_designation_achievements#create")
    end

    it "routes to #update" do
      put("/city_designation_achievements/1").should route_to("city_designation_achievements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/city_designation_achievements/1").should route_to("city_designation_achievements#destroy", :id => "1")
    end

  end
end
