require "spec_helper"

describe ResolutionsController do
  describe "routing" do

    it "routes to #index" do
      get("/resolutions").should route_to("resolutions#index")
    end

    it "routes to #new" do
      get("/resolutions/new").should route_to("resolutions#new")
    end

    it "routes to #show" do
      get("/resolutions/1").should route_to("resolutions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resolutions/1/edit").should route_to("resolutions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resolutions").should route_to("resolutions#create")
    end

    it "routes to #update" do
      put("/resolutions/1").should route_to("resolutions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resolutions/1").should route_to("resolutions#destroy", :id => "1")
    end

  end
end
