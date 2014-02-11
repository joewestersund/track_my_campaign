require "spec_helper"

describe SurveyEmailSentsController do
  describe "routing" do

    it "routes to #index" do
      get("/survey_email_sents").should route_to("survey_email_sents#index")
    end

    it "routes to #new" do
      get("/survey_email_sents/new").should route_to("survey_email_sents#new")
    end

    it "routes to #show" do
      get("/survey_email_sents/1").should route_to("survey_email_sents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/survey_email_sents/1/edit").should route_to("survey_email_sents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/survey_email_sents").should route_to("survey_email_sents#create")
    end

    it "routes to #update" do
      put("/survey_email_sents/1").should route_to("survey_email_sents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/survey_email_sents/1").should route_to("survey_email_sents#destroy", :id => "1")
    end

  end
end
