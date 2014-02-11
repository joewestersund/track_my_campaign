require "spec_helper"

describe CityDesignationsController do
  describe "routing" do

    it "routes to #index" do
      get("/city_designations").should route_to("city_designations#index")
    end

    it "routes to #new" do
      get("/city_designations/new").should route_to("city_designations#new")
    end

    it "routes to #show" do
      get("/city_designations/1").should route_to("city_designations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/city_designations/1/edit").should route_to("city_designations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/city_designations").should route_to("city_designations#create")
    end

    it "routes to #update" do
      put("/city_designations/1").should route_to("city_designations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/city_designations/1").should route_to("city_designations#destroy", :id => "1")
    end

  end
end
