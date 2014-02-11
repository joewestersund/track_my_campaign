require 'spec_helper'

describe "survey_email_sents/index" do
  before(:each) do
    assign(:survey_email_sents, [
      stub_model(SurveyEmailSent,
        :database_instance_id => 1,
        :contact_id => 2,
        :email_address => "Email Address",
        :subject => "Subject",
        :message => "MyText",
        :survey_monkey_respondent_id => 3,
        :response_received => false
      ),
      stub_model(SurveyEmailSent,
        :database_instance_id => 1,
        :contact_id => 2,
        :email_address => "Email Address",
        :subject => "Subject",
        :message => "MyText",
        :survey_monkey_respondent_id => 3,
        :response_received => false
      )
    ])
  end

  it "renders a list of survey_email_sents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
