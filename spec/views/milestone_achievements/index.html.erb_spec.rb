require 'spec_helper'

describe "milestone_achievements/index" do
  before(:each) do
    assign(:milestones, [
      stub_model(MilestoneAchievement,
        :database_instance_id => 1,
        :milestone_id => 2,
        :city_id => 3,
        :status_type_id => 4,
        :notes => "MyText",
        :user_id => 5
      ),
      stub_model(MilestoneAchievement,
        :database_instance_id => 1,
        :milestone_id => 2,
        :city_id => 3,
        :status_type_id => 4,
        :notes => "MyText",
        :user_id => 5
      )
    ])
  end

  it "renders a list of milestone_achievements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
