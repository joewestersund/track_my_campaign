require 'spec_helper'

describe "policies/edit" do
  before(:each) do
    @policy = assign(:policy, stub_model(Policy,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", policy_path(@policy), "post" do
      assert_select "input#policy_database_instance_id[name=?]", "policy[database_instance_id]"
      assert_select "input#policy_name[name=?]", "policy[name]"
      assert_select "input#policy_order_in_list[name=?]", "policy[order_in_list]"
    end
  end
end
