require "spec_helper"

describe ContactInterestLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/contact_interest_levels").should route_to("contact_interest_levels#index")
    end

    it "routes to #new" do
      get("/contact_interest_levels/new").should route_to("contact_interest_levels#new")
    end

    it "routes to #show" do
      get("/contact_interest_levels/1").should route_to("contact_interest_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contact_interest_levels/1/edit").should route_to("contact_interest_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contact_interest_levels").should route_to("contact_interest_levels#create")
    end

    it "routes to #update" do
      put("/contact_interest_levels/1").should route_to("contact_interest_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contact_interest_levels/1").should route_to("contact_interest_levels#destroy", :id => "1")
    end

  end
end
