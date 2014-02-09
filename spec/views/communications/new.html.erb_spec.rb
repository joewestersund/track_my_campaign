require 'spec_helper'

describe "communications/new" do
  before(:each) do
    assign(:communication, stub_model(Communication,
      :database_instance_id => 1,
      :duration_minutes => 1,
      :communication_type_id => 1,
      :event_name => "MyString",
      :contact_interest_level_id => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new communication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", communications_path, "post" do
      assert_select "input#communication_database_instance_id[name=?]", "communication[database_instance_id]"
      assert_select "input#communication_duration_minutes[name=?]", "communication[duration_minutes]"
      assert_select "input#communication_communication_type_id[name=?]", "communication[communication_type_id]"
      assert_select "input#communication_event_name[name=?]", "communication[event_name]"
      assert_select "input#communication_contact_interest_level_id[name=?]", "communication[contact_interest_level_id]"
      assert_select "textarea#communication_notes[name=?]", "communication[notes]"
    end
  end
end
