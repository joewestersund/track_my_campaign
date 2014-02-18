require 'spec_helper'

describe "followup_tasks/edit" do
  before(:each) do
    @followup_task = assign(:followup_task, stub_model(FollowupTask,
      :database_instance_id => 1,
      :description => "MyText",
      :assigned_to_id => 1,
      :assigned_by_id => 1,
      :prior_communication_id => 1,
      :completed => false,
      :completed_by_id => 1,
      :completion_notes => "MyText"
    ))
  end

  it "renders the edit followup_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", followup_task_path(@followup_task), "post" do
      assert_select "input#followup_task_database_instance_id[name=?]", "followup_task[database_instance_id]"
      assert_select "textarea#followup_task_description[name=?]", "followup_task[description]"
      assert_select "input#followup_task_assigned_to_id[name=?]", "followup_task[assigned_to_id]"
      assert_select "input#followup_task_assigned_by_id[name=?]", "followup_task[assigned_by_id]"
      assert_select "input#followup_task_prior_communication_id[name=?]", "followup_task[prior_communication_id]"
      assert_select "input#followup_task_completed[name=?]", "followup_task[completed]"
      assert_select "input#followup_task_completed_by_id[name=?]", "followup_task[completed_by_id]"
      assert_select "textarea#followup_task_completion_notes[name=?]", "followup_task[completion_notes]"
    end
  end
end
