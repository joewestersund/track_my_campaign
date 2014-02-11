require 'spec_helper'

describe "survey_emails/new" do
  before(:each) do
    assign(:survey_email, stub_model(SurveyEmail,
      :database_instance_id => 1,
      :contact_id => 1,
      :email_address => "MyString",
      :subject => "MyString",
      :message => "MyText",
      :survey_monkey_respondent_id => 1,
      :response_received => false
    ).as_new_record)
  end

  it "renders new survey_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", survey_emails_path, "post" do
      assert_select "input#survey_email_database_instance_id[name=?]", "survey_email[database_instance_id]"
      assert_select "input#survey_email_contact_id[name=?]", "survey_email[contact_id]"
      assert_select "input#survey_email_email_address[name=?]", "survey_email[email_address]"
      assert_select "input#survey_email_subject[name=?]", "survey_email[subject]"
      assert_select "textarea#survey_email_message[name=?]", "survey_email[message]"
      assert_select "input#survey_email_survey_monkey_respondent_id[name=?]", "survey_email[survey_monkey_respondent_id]"
      assert_select "input#survey_email_response_received[name=?]", "survey_email[response_received]"
    end
  end
end
