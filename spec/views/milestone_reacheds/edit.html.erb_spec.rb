require 'spec_helper'

describe "milestone_reacheds/edit" do
  before(:each) do
    @milestone_reached = assign(:milestone_reached, stub_model(MilestoneReached,
      :database_instance_id => 1,
      :milestone_id => 1,
      :city_id => 1,
      :status_type_id => 1,
      :notes => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit milestone_reached form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", milestone_reached_path(@milestone_reached), "post" do
      assert_select "input#milestone_reached_database_instance_id[name=?]", "milestone_reached[database_instance_id]"
      assert_select "input#milestone_reached_milestone_id[name=?]", "milestone_reached[milestone_id]"
      assert_select "input#milestone_reached_city_id[name=?]", "milestone_reached[city_id]"
      assert_select "input#milestone_reached_status_type_id[name=?]", "milestone_reached[status_type_id]"
      assert_select "textarea#milestone_reached_notes[name=?]", "milestone_reached[notes]"
      assert_select "input#milestone_reached_user_id[name=?]", "milestone_reached[user_id]"
    end
  end
end
