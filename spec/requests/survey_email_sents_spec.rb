require 'spec_helper'

describe "SurveyEmailSents" do
  describe "GET /survey_email_sents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get survey_email_sents_path
      response.status.should be(200)
    end
  end
end
