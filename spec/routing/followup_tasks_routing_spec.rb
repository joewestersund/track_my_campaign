require "spec_helper"

describe FollowupTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/followup_tasks").should route_to("followup_tasks#index")
    end

    it "routes to #new" do
      get("/followup_tasks/new").should route_to("followup_tasks#new")
    end

    it "routes to #show" do
      get("/followup_tasks/1").should route_to("followup_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/followup_tasks/1/edit").should route_to("followup_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/followup_tasks").should route_to("followup_tasks#create")
    end

    it "routes to #update" do
      put("/followup_tasks/1").should route_to("followup_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/followup_tasks/1").should route_to("followup_tasks#destroy", :id => "1")
    end

  end
end
