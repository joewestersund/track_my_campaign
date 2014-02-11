require 'spec_helper'

describe "heal_policies/edit" do
  before(:each) do
    @heal_policy = assign(:heal_policy, stub_model(HealPolicy,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit heal_policy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", heal_policy_path(@heal_policy), "post" do
      assert_select "input#heal_policy_database_instance_id[name=?]", "heal_policy[database_instance_id]"
      assert_select "input#heal_policy_name[name=?]", "heal_policy[name]"
      assert_select "input#heal_policy_order_in_list[name=?]", "heal_policy[order_in_list]"
    end
  end
end
