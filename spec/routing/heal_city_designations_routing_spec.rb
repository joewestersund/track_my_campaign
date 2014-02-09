require "spec_helper"

describe HealCityDesignationsController do
  describe "routing" do

    it "routes to #index" do
      get("/heal_city_designations").should route_to("heal_city_designations#index")
    end

    it "routes to #new" do
      get("/heal_city_designations/new").should route_to("heal_city_designations#new")
    end

    it "routes to #show" do
      get("/heal_city_designations/1").should route_to("heal_city_designations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/heal_city_designations/1/edit").should route_to("heal_city_designations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/heal_city_designations").should route_to("heal_city_designations#create")
    end

    it "routes to #update" do
      put("/heal_city_designations/1").should route_to("heal_city_designations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/heal_city_designations/1").should route_to("heal_city_designations#destroy", :id => "1")
    end

  end
end
