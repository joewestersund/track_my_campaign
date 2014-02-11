require 'spec_helper'

describe "survey_email_sents/show" do
  before(:each) do
    @survey_email_sent = assign(:survey_email_sent, stub_model(SurveyEmailSent,
      :database_instance_id => 1,
      :contact_id => 2,
      :email_address => "Email Address",
      :subject => "Subject",
      :message => "MyText",
      :survey_monkey_respondent_id => 3,
      :response_received => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Email Address/)
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/false/)
  end
end
