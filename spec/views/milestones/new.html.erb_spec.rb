require 'spec_helper'

describe "milestones/new" do
  before(:each) do
    assign(:milestone, stub_model(Milestone,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", milestones_path, "post" do
      assert_select "input#milestone_database_instance_id[name=?]", "milestone[database_instance_id]"
      assert_select "input#milestone_name[name=?]", "milestone[name]"
      assert_select "input#milestone_order_in_list[name=?]", "milestone[order_in_list]"
    end
  end
end
