require "spec_helper"

describe InterestLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/interest_levels").should route_to("interest_levels#index")
    end

    it "routes to #new" do
      get("/interest_levels/new").should route_to("interest_levels#new")
    end

    it "routes to #show" do
      get("/interest_levels/1").should route_to("interest_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interest_levels/1/edit").should route_to("interest_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interest_levels").should route_to("interest_levels#create")
    end

    it "routes to #update" do
      put("/interest_levels/1").should route_to("interest_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interest_levels/1").should route_to("interest_levels#destroy", :id => "1")
    end

  end
end
