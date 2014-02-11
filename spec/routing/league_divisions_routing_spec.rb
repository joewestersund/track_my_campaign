require "spec_helper"

describe LeagueDivisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/league_divisions").should route_to("league_divisions#index")
    end

    it "routes to #new" do
      get("/league_divisions/new").should route_to("league_divisions#new")
    end

    it "routes to #show" do
      get("/league_divisions/1").should route_to("league_divisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/league_divisions/1/edit").should route_to("league_divisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/league_divisions").should route_to("league_divisions#create")
    end

    it "routes to #update" do
      put("/league_divisions/1").should route_to("league_divisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/league_divisions/1").should route_to("league_divisions#destroy", :id => "1")
    end

  end
end
