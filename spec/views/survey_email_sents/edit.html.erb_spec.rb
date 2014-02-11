require 'spec_helper'

describe "survey_email_sents/edit" do
  before(:each) do
    @survey_email_sent = assign(:survey_email_sent, stub_model(SurveyEmailSent,
      :database_instance_id => 1,
      :contact_id => 1,
      :email_address => "MyString",
      :subject => "MyString",
      :message => "MyText",
      :survey_monkey_respondent_id => 1,
      :response_received => false
    ))
  end

  it "renders the edit survey_email_sent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", survey_email_sent_path(@survey_email_sent), "post" do
      assert_select "input#survey_email_sent_database_instance_id[name=?]", "survey_email_sent[database_instance_id]"
      assert_select "input#survey_email_sent_contact_id[name=?]", "survey_email_sent[contact_id]"
      assert_select "input#survey_email_sent_email_address[name=?]", "survey_email_sent[email_address]"
      assert_select "input#survey_email_sent_subject[name=?]", "survey_email_sent[subject]"
      assert_select "textarea#survey_email_sent_message[name=?]", "survey_email_sent[message]"
      assert_select "input#survey_email_sent_survey_monkey_respondent_id[name=?]", "survey_email_sent[survey_monkey_respondent_id]"
      assert_select "input#survey_email_sent_response_received[name=?]", "survey_email_sent[response_received]"
    end
  end
end
