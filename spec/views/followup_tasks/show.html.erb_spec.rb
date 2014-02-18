require 'spec_helper'

describe "followup_tasks/show" do
  before(:each) do
    @followup_task = assign(:followup_task, stub_model(FollowupTask,
      :database_instance_id => 1,
      :description => "MyText",
      :assigned_to_id => 2,
      :assigned_by_id => 3,
      :prior_communication_id => 4,
      :completed => false,
      :completed_by_id => 5,
      :completion_notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
    rendered.should match(/5/)
    rendered.should match(/MyText/)
  end
end
