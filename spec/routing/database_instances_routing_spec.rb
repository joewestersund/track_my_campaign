require "spec_helper"

describe DatabaseInstancesController do
  describe "routing" do

    it "routes to #index" do
      get("/database_instances").should route_to("database_instances#index")
    end

    it "routes to #new" do
      get("/database_instances/new").should route_to("database_instances#new")
    end

    it "routes to #show" do
      get("/database_instances/1").should route_to("database_instances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/database_instances/1/edit").should route_to("database_instances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/database_instances").should route_to("database_instances#create")
    end

    it "routes to #update" do
      put("/database_instances/1").should route_to("database_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/database_instances/1").should route_to("database_instances#destroy", :id => "1")
    end

  end
end
