require "spec_helper"

describe DatabaseTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/database_types").should route_to("database_types#index")
    end

    it "routes to #new" do
      get("/database_types/new").should route_to("database_types#new")
    end

    it "routes to #show" do
      get("/database_types/1").should route_to("database_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/database_types/1/edit").should route_to("database_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/database_types").should route_to("database_types#create")
    end

    it "routes to #update" do
      put("/database_types/1").should route_to("database_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/database_types/1").should route_to("database_types#destroy", :id => "1")
    end

  end
end
