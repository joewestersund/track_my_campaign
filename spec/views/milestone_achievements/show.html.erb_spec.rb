require 'spec_helper'

describe "milestone_achievements/show" do
  before(:each) do
    @milestone_achievement = assign(:milestone_achievement, stub_model(MilestoneAchievement,
      :database_instance_id => 1,
      :milestone_id => 2,
      :city_id => 3,
      :status_type_id => 4,
      :notes => "MyText",
      :user_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/5/)
  end
end
