require 'spec_helper'

describe "followup_tasks/index" do
  before(:each) do
    assign(:followup_tasks, [
      stub_model(FollowupTask,
        :database_instance_id => 1,
        :description => "MyText",
        :assigned_to_id => 2,
        :assigned_by_id => 3,
        :prior_communication_id => 4,
        :completed => false,
        :completed_by_id => 5,
        :completion_notes => "MyText"
      ),
      stub_model(FollowupTask,
        :database_instance_id => 1,
        :description => "MyText",
        :assigned_to_id => 2,
        :assigned_by_id => 3,
        :prior_communication_id => 4,
        :completed => false,
        :completed_by_id => 5,
        :completion_notes => "MyText"
      )
    ])
  end

  it "renders a list of followup_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
