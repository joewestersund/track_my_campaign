require "spec_helper"

describe StatusTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/status_types").should route_to("status_types#index")
    end

    it "routes to #new" do
      get("/status_types/new").should route_to("status_types#new")
    end

    it "routes to #show" do
      get("/status_types/1").should route_to("status_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/status_types/1/edit").should route_to("status_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/status_types").should route_to("status_types#create")
    end

    it "routes to #update" do
      put("/status_types/1").should route_to("status_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/status_types/1").should route_to("status_types#destroy", :id => "1")
    end

  end
end
