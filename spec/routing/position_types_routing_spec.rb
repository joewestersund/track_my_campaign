require "spec_helper"

describe PositionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/position_types").should route_to("position_types#index")
    end

    it "routes to #new" do
      get("/position_types/new").should route_to("position_types#new")
    end

    it "routes to #show" do
      get("/position_types/1").should route_to("position_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/position_types/1/edit").should route_to("position_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/position_types").should route_to("position_types#create")
    end

    it "routes to #update" do
      put("/position_types/1").should route_to("position_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/position_types/1").should route_to("position_types#destroy", :id => "1")
    end

  end
end
