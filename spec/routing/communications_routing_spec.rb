require "spec_helper"

describe CommunicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/communications").should route_to("communications#index")
    end

    it "routes to #new" do
      get("/communications/new").should route_to("communications#new")
    end

    it "routes to #show" do
      get("/communications/1").should route_to("communications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/communications/1/edit").should route_to("communications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/communications").should route_to("communications#create")
    end

    it "routes to #update" do
      put("/communications/1").should route_to("communications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/communications/1").should route_to("communications#destroy", :id => "1")
    end

  end
end
