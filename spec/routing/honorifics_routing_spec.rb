require "spec_helper"

describe HonorificsController do
  describe "routing" do

    it "routes to #index" do
      get("/honorifics").should route_to("honorifics#index")
    end

    it "routes to #new" do
      get("/honorifics/new").should route_to("honorifics#new")
    end

    it "routes to #show" do
      get("/honorifics/1").should route_to("honorifics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/honorifics/1/edit").should route_to("honorifics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/honorifics").should route_to("honorifics#create")
    end

    it "routes to #update" do
      put("/honorifics/1").should route_to("honorifics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/honorifics/1").should route_to("honorifics#destroy", :id => "1")
    end

  end
end
