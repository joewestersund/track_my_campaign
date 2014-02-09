require "spec_helper"

describe JurisdictionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/jurisdiction_types").should route_to("jurisdiction_types#index")
    end

    it "routes to #new" do
      get("/jurisdiction_types/new").should route_to("jurisdiction_types#new")
    end

    it "routes to #show" do
      get("/jurisdiction_types/1").should route_to("jurisdiction_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jurisdiction_types/1/edit").should route_to("jurisdiction_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jurisdiction_types").should route_to("jurisdiction_types#create")
    end

    it "routes to #update" do
      put("/jurisdiction_types/1").should route_to("jurisdiction_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jurisdiction_types/1").should route_to("jurisdiction_types#destroy", :id => "1")
    end

  end
end
