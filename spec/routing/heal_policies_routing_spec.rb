require "spec_helper"

describe HealPoliciesController do
  describe "routing" do

    it "routes to #index" do
      get("/heal_policies").should route_to("heal_policies#index")
    end

    it "routes to #new" do
      get("/heal_policies/new").should route_to("heal_policies#new")
    end

    it "routes to #show" do
      get("/heal_policies/1").should route_to("heal_policies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/heal_policies/1/edit").should route_to("heal_policies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/heal_policies").should route_to("heal_policies#create")
    end

    it "routes to #update" do
      put("/heal_policies/1").should route_to("heal_policies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/heal_policies/1").should route_to("heal_policies#destroy", :id => "1")
    end

  end
end
