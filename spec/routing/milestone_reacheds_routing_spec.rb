require "spec_helper"

describe MilestoneReachedsController do
  describe "routing" do

    it "routes to #index" do
      get("/milestone_reacheds").should route_to("milestone_reacheds#index")
    end

    it "routes to #new" do
      get("/milestone_reacheds/new").should route_to("milestone_reacheds#new")
    end

    it "routes to #show" do
      get("/milestone_reacheds/1").should route_to("milestone_reacheds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/milestone_reacheds/1/edit").should route_to("milestone_reacheds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/milestone_reacheds").should route_to("milestone_reacheds#create")
    end

    it "routes to #update" do
      put("/milestone_reacheds/1").should route_to("milestone_reacheds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/milestone_reacheds/1").should route_to("milestone_reacheds#destroy", :id => "1")
    end

  end
end
