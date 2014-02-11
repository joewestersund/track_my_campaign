require "spec_helper"

describe MilestoneAchievementsController do
  describe "routing" do

    it "routes to #index" do
      get("/milestone_achievements").should route_to("milestone_achievements#index")
    end

    it "routes to #new" do
      get("/milestone_achievements/new").should route_to("milestone_achievements#new")
    end

    it "routes to #show" do
      get("/milestone_achievements/1").should route_to("milestone_achievements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/milestone_achievements/1/edit").should route_to("milestone_achievements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/milestone_achievements").should route_to("milestone_achievements#create")
    end

    it "routes to #update" do
      put("/milestone_achievements/1").should route_to("milestone_achievements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/milestone_achievements/1").should route_to("milestone_achievements#destroy", :id => "1")
    end

  end
end
