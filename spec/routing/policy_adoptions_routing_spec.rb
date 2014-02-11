require "spec_helper"

describe PolicyAdoptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/policy_adoptions").should route_to("policy_adoptions#index")
    end

    it "routes to #new" do
      get("/policy_adoptions/new").should route_to("policy_adoptions#new")
    end

    it "routes to #show" do
      get("/policy_adoptions/1").should route_to("policy_adoptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/policy_adoptions/1/edit").should route_to("policy_adoptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/policy_adoptions").should route_to("policy_adoptions#create")
    end

    it "routes to #update" do
      put("/policy_adoptions/1").should route_to("policy_adoptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/policy_adoptions/1").should route_to("policy_adoptions#destroy", :id => "1")
    end

  end
end
