require "spec_helper"

describe SurveyEmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/survey_emails").should route_to("survey_emails#index")
    end

    it "routes to #new" do
      get("/survey_emails/new").should route_to("survey_emails#new")
    end

    it "routes to #show" do
      get("/survey_emails/1").should route_to("survey_emails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/survey_emails/1/edit").should route_to("survey_emails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/survey_emails").should route_to("survey_emails#create")
    end

    it "routes to #update" do
      put("/survey_emails/1").should route_to("survey_emails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/survey_emails/1").should route_to("survey_emails#destroy", :id => "1")
    end

  end
end
