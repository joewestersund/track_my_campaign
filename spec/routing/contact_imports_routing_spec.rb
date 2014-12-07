require "spec_helper"

describe ContactImportsController do
  describe "routing" do

    it "routes to #index" do
      get("/contact_imports").should route_to("contact_imports#index")
    end

    it "routes to #new" do
      get("/contact_imports/new").should route_to("contact_imports#new")
    end

    it "routes to #show" do
      get("/contact_imports/1").should route_to("contact_imports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contact_imports/1/edit").should route_to("contact_imports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contact_imports").should route_to("contact_imports#create")
    end

    it "routes to #update" do
      put("/contact_imports/1").should route_to("contact_imports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contact_imports/1").should route_to("contact_imports#destroy", :id => "1")
    end

  end
end
