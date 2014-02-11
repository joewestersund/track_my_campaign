require 'spec_helper'

describe "heal_policies/new" do
  before(:each) do
    assign(:heal_policy, stub_model(HealPolicy,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new heal_policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", heal_policies_path, "post" do
      assert_select "input#heal_policy_database_instance_id[name=?]", "heal_policy[database_instance_id]"
      assert_select "input#heal_policy_name[name=?]", "heal_policy[name]"
      assert_select "input#heal_policy_order_in_list[name=?]", "heal_policy[order_in_list]"
    end
  end
end
