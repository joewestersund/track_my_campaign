require "spec_helper"

describe CommunicationTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/communication_types").should route_to("communication_types#index")
    end

    it "routes to #new" do
      get("/communication_types/new").should route_to("communication_types#new")
    end

    it "routes to #show" do
      get("/communication_types/1").should route_to("communication_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/communication_types/1/edit").should route_to("communication_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/communication_types").should route_to("communication_types#create")
    end

    it "routes to #update" do
      put("/communication_types/1").should route_to("communication_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/communication_types/1").should route_to("communication_types#destroy", :id => "1")
    end

  end
end
