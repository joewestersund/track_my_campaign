require 'spec_helper'

describe "milestone_achievements/new" do
  before(:each) do
    assign(:milestone_achievement, stub_model(MilestoneAchievement,
      :database_instance_id => 1,
      :milestone_id => 1,
      :city_id => 1,
      :status_type_id => 1,
      :notes => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new milestone_achievement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", milestone_achievements_path, "post" do
      assert_select "input#milestone_achievement_database_instance_id[name=?]", "milestone_achievement[database_instance_id]"
      assert_select "input#milestone_achievement_milestone_id[name=?]", "milestone_achievement[milestone_id]"
      assert_select "input#milestone_achievement_city_id[name=?]", "milestone_achievement[city_id]"
      assert_select "input#milestone_achievement_status_type_id[name=?]", "milestone_achievement[status_type_id]"
      assert_select "textarea#milestone_achievement_notes[name=?]", "milestone_achievement[notes]"
      assert_select "input#milestone_achievement_user_id[name=?]", "milestone_achievement[user_id]"
    end
  end
end
